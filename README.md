# runpod-github-test — throwaway

Probes RunPod's GitHub-deploy integration build semantics.

- **Root worker** (control): `Dockerfile` + `handler.py` at root → returns `worker: flat-root`
- **Subdir worker** (probe): `workers/alpha/Dockerfile` (Dockerfile Path) with
  UNQUALIFIED `COPY src/handler.py` → returns `worker: alpha-subdir`

Question under test: does Dockerfile Path imply build context = the Dockerfile's
directory (unqualified COPY works) or = repo root (COPY must be qualified)?
