-- Review and apply to enable cloud sync. RLS restricts each row to auth.uid().
create table if not exists public.player_progress (
  user_id uuid primary key references auth.users(id) on delete cascade,
  xp integer not null default 0 check (xp >= 0),
  streak integer not null default 0 check (streak >= 0),
  completed_missions jsonb not null default '[]'::jsonb,
  practice_dates jsonb not null default '[]'::jsonb,
  last_practice date,
  updated_at timestamptz not null default now()
);
alter table public.player_progress enable row level security;
revoke all on public.player_progress from anon;
grant select, insert, update on public.player_progress to authenticated;
drop policy if exists "Players can read their progress" on public.player_progress;
create policy "Players can read their progress" on public.player_progress for select to authenticated using ((select auth.uid()) = user_id);
drop policy if exists "Players can insert their progress" on public.player_progress;
create policy "Players can insert their progress" on public.player_progress for insert to authenticated with check ((select auth.uid()) = user_id);
drop policy if exists "Players can update their progress" on public.player_progress;
create policy "Players can update their progress" on public.player_progress for update to authenticated using ((select auth.uid()) = user_id) with check ((select auth.uid()) = user_id);
