# Política de Privacidade — Membo

_Última atualização: 10 de julho de 2026_

O Membo ("app", "nós") ajuda você a lembrar de pagar suas contas e a cobrar quem te
deve. Esta política explica quais dados o app coleta, por que os coleta e quais são os
seus direitos. Resumo: **o Membo funciona local-first — suas contas ficam no seu iPhone.
Você só compartilha dados conosco se optar por criar uma conta.**

> **TODO antes de publicar:** troque o e-mail de contato abaixo se quiser um endereço
> dedicado, hospede este arquivo (ex.: GitHub Pages) e cole a URL pública no App Store
> Connect (App Privacy → Privacy Policy URL).

## 1. Dados que o app coleta

### 1.1 Ficam apenas no seu dispositivo (não enviados a nós)
- **Suas contas e cobranças**: título, valor, datas, recorrência, notas e chave Pix.
  Armazenados localmente (SwiftData) e sincronizados ao seu grupo de app para o widget e
  a Live Activity. Não saem do aparelho na v1.
- **Notificações**: agendadas localmente pelo iOS. Não recebemos seu histórico.

### 1.2 Enviados a nós **somente se você criar uma conta** (opcional)
Se você entrar com **Sign in with Apple**, coletamos e guardamos no nosso provedor
(Supabase) o seguinte perfil:
- **Identificador de usuário** e **e-mail** fornecidos pela Apple (o e-mail pode ser o
  relay privado da Apple se você escolher ocultá-lo);
- **Nome de exibição** e **chave Pix**, se você preenchê-los;
- Respostas do onboarding: **como conheceu o app**, **faixa etária** e **objetivo principal**.

Não coletamos localização, contatos, fotos, dados de saúde nem identificadores de
publicidade. **Não fazemos rastreamento** entre apps (nenhum SDK de tracking/ATT).

## 2. Como usamos os dados
- Operar o app e guardar seu perfil de conta;
- Entender, de forma agregada, como as pessoas conhecem e usam o Membo (as três perguntas
  do onboarding) para melhorar o produto;
- Processar assinaturas (veja seção 4).

Não vendemos seus dados nem os usamos para publicidade.

## 3. Onde os dados ficam
- **No seu iPhone**: suas contas/cobranças (armazenamento local).
- **Supabase** (processador), região São Paulo — Brasil (`sa-east-1`): apenas o perfil de
  conta descrito em 1.2. O acesso é protegido por Row Level Security (cada usuário só
  acessa as próprias linhas).
- **Apple**: autenticação (Sign in with Apple) e cobrança das assinaturas.

## 4. Assinaturas (Membo Pro)
As compras são processadas pela **Apple** via App Store. Não recebemos nem armazenamos os
dados do seu cartão. A Apple compartilha conosco apenas o status da assinatura
(ativa/expirada) para liberar os recursos Pro.

## 5. Retenção e exclusão
- Dados locais são apagados ao remover o app.
- Dados de conta ficam até você pedir exclusão. Para excluir sua conta e os dados
  associados, escreva para o contato abaixo — atendemos em até 30 dias.

## 6. Crianças
O Membo não é destinado a menores de 13 anos e não coletamos intencionalmente dados
dessa faixa etária.

## 7. Alterações
Podemos atualizar esta política. Mudanças relevantes serão refletidas nesta página com
nova data de atualização.

## 8. Contato
Dúvidas ou pedidos de exclusão: **gbarra2511@icloud.com**
