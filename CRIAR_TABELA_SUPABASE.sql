-- Rode este arquivo no SQL Editor do Supabase antes de abrir o sistema.
-- Mantive sem policies/RLS para ficar simples no primeiro teste, como você pediu.
-- Depois que funcionar, o ideal é ativar RLS e criar regras de acesso.

CREATE TABLE IF NOT EXISTS multas (
  id BIGINT PRIMARY KEY,
  linha TEXT,
  carro TEXT,
  data DATE,
  hora TEXT,
  local TEXT,
  municipio TEXT,
  orgao TEXT,
  infracao TEXT,
  auto TEXT,
  motorista TEXT,
  valor NUMERIC(10,2),
  assinado TEXT,
  pago TEXT,
  envio_rca DATE,
  prazo_aceite DATE,
  dp TEXT,
  status TEXT,
  obs TEXT,
  data_suspeita BOOLEAN DEFAULT FALSE,
  created_at TIMESTAMPTZ DEFAULT NOW()
);

ALTER TABLE multas DISABLE ROW LEVEL SECURITY;
