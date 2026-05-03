-- ============================================================
-- Migration: boletim_maio_2026
-- Boletim diário enviado às creators durante a Campanha Maio
-- 17 dias: D1 (30/04 Qua) → D17 (16/05 Sex)
-- (campanha ativa termina em 12/05; D14–D17 são boletins de análise)
-- ============================================================

create table public.boletim_maio_2026 (
  id                    bigint generated always as identity primary key,
  dia                   integer       not null unique check (dia between 1 and 17),
  fase_campanha         text          not null,
  video_performatico    text          not null,
  top_videos_promo      text          not null,
  roteiros_ganchos      text          not null,
  trend_musica_viral    text          not null,
  created_at            timestamptz   not null default now(),
  updated_at            timestamptz   not null default now()
);

create trigger trg_boletim_maio_2026_updated_at
  before update on public.boletim_maio_2026
  for each row execute procedure public.set_updated_at();

alter table public.boletim_maio_2026 enable row level security;

create policy "anon_select" on public.boletim_maio_2026 for select to anon using (true);
create policy "anon_insert" on public.boletim_maio_2026 for insert to anon with check (true);
create policy "anon_update" on public.boletim_maio_2026 for update to anon using (true);
create policy "anon_delete" on public.boletim_maio_2026 for delete to anon using (true);
