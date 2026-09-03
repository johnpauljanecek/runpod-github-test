import runpod


def handler(job):
    data = job.get("input") or {}
    return {
        "worker": "flat-root",  # marker: proves which Dockerfile built this image
        "echo": data.get("text", ""),
    }


runpod.serverless.start({"handler": handler})
