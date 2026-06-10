FROM ghcr.io/kieraneglin/pinchflat:v2025.6.6

# Install Deno - required for YouTube downloads (See yt-dlp#14404)
RUN RUN curl -fsSL https://deno.land/install.sh | DENO_INSTALL=/usr/local sh -s -- -y --no-modify-path

# FFmpeg (latest build that doesn't cause an illegal instruction error for some users - see #347)
RUN apt-get update && apt-get install -y xz-utils
RUN curl -L "https://github.com/yt-dlp/FFmpeg-Builds/releases/download/autobuild-2026-06-09-16-47/ffmpeg-N-124881-g6028720d70-linux64-gpl.tar.xz" --output /tmp/ffmpeg.tar.xz
RUN tar -xf /tmp/ffmpeg.tar.xz --strip-components=2 --no-anchored -C /usr/local/bin/ "ffmpeg"
RUN tar -xf /tmp/ffmpeg.tar.xz --strip-components=2 --no-anchored -C /usr/local/bin/ "ffprobe"
