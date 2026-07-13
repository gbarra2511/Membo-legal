-- Membo — in-app account deletion (App Store Guideline 5.1.1(v))
-- Run this once in the Supabase SQL editor.
--
-- The app's anon client CANNOT delete a row in auth.users, so we expose a
-- SECURITY DEFINER function that deletes the *currently authenticated* user
-- (auth.uid()). Deleting the auth.users row cascades to every table whose
-- user column references auth.users ON DELETE CASCADE (profiles, bills,
-- receivables, payments in the standard Membo schema).
--
-- The app calls it via: POST /rest/v1/rpc/delete_account  (with the user's JWT).

create or replace function public.delete_account()
returns void
language plpgsql
security definer
set search_path = ''
as $$
begin
  -- Explicit deletes first, so this works even if a table was created without
  -- ON DELETE CASCADE. Comment out any line whose table you don't have.
  delete from public.payments    where user_id = auth.uid();
  delete from public.bills       where user_id = auth.uid();
  delete from public.receivables where user_id = auth.uid();
  delete from public.profiles    where id = auth.uid();

  -- Finally remove the identity itself.
  delete from auth.users where id = auth.uid();
end;
$$;

-- Only a signed-in user may call it; never anon/public.
revoke all on function public.delete_account() from public, anon;
grant execute on function public.delete_account() to authenticated;
