# Connect 3

A browser-based Connect 3 puzzle game built as a single-page HTML application with PWA support.

## Features

- Single-file HTML game (`connect3.html`) with no build step or dependencies
- Progressive Web App — installable on mobile and desktop
- Multiple themed skins (Classic, Blake's 7, Gilmore Girls, Monkey Magic, Rentaghost, Battle of the Planets, He-Man)
- Local storage caching for offline play and progress persistence
- Service worker for offline support

## Running locally

Open `connect3.html` in a browser.

## Docker deployment (Synology NAS / self-hosting)

The included `Dockerfile` serves the game via nginx.

```bash
docker build -t connect3 .
docker run -d --name connect3 -p 8080:80 --restart unless-stopped connect3
```

The game will be available at `http://<host-ip>:8080`.

### Synology NAS notes

- Use `sudo` for all Docker commands on Synology (the default admin user is not in the docker group)
- Enable SFTP in **Control Panel > File Services > FTP** if you want to `scp` files to the NAS
- After deploying, if assets return 403, run:
  ```bash
  sudo docker exec connect3 chmod -R 755 /usr/share/nginx/html/
  ```

## Project structure

```
connect3.html              Main game (single-file HTML/CSS/JS)
manifest.json              PWA manifest
service-worker.js          Service worker for offline caching
service-worker-register.js Service worker registration script
192x192.png                App icon (small)
512x512.png                App icon (large)
assets/                    Skin sprite sheets and index
  index.txt                Skin registry (filename,display name)
  *.png                    Skin sprite sheets
Dockerfile                 nginx-based container for deployment
```
