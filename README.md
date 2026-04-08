# git-critique

Run `git critique` to see churn hotspots, bus factor, bug clusters, and crisis patterns.

## Install

```bash
git clone https://github.com/zdk/git-critique.git
cd git-critique
./install.sh
```

## Usage

```bash
cd your-git-repo
git critique
```

## Example output:

```
Reviewing the last year of git history...

These files keep changing:
   42  src/api/handler.go
   38  src/db/queries.go
   29  config/settings.yaml
   25  src/api/middleware.go
   21  src/auth/oauth.go

Who's behind this:
   312  Alice
   274  Bob
   118  Carol
    45  Dave

Where the bugs live:
   12  src/api/handler.go
    9  src/db/queries.go
    5  src/auth/oauth.go

How active is this project:
  2025-05:  ████████████████ 16
  2025-06:  ██████████████████████ 22
  2025-07:  █████████████ 13
  2025-08:  ████████████████████████████ 28
  2025-09:  ██████████████████ 18
  2025-10:  ██████████████████████████████████ 34
  2025-11:  ████████████████████████ 24
  2025-12:  ██████████ 10
  2026-01:  ████████████████████████████████████████ 40
  2026-02:  ██████████████████████████████ 30
  2026-03:  ████████████████████████████ 28
  2026-04:  ██████████████ 14

Any fires lately:
  2026-03-12 revert: broken auth flow after oauth migration
  2026-01-05 hotfix: connection pool exhaustion under load
```
