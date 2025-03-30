# Welcome to the mobile app 👋

This is an Expo project created with `create-expo-app`.

## Getting Started

### Prerequisites:

- Git: Installed on your host machine.
- Node.js & npm: Installed on your host machine (needed for the initial project creation step). Use the current LTS version.
- Docker & Docker Compose: Installed and running on your host machine. (Docker Desktop includes both).
- VS Code: Installed on your host machine (Recommended).
- VS Code "Dev Containers" Extension: Installed in VS Code (Recommended).

### Option 1: Using VS Code Dev Containers (Recommended)

- Open the project folder (`mobile`) in VS Code on your host machine.
- VS Code should detect the `.devcontainer/devcontainer.json` file and prompt you with a notification: "Folder contains a Dev Container configuration file. Reopen folder to develop in a container?". Click "Reopen in Container".
- Alternatively, open the Command Palette (Ctrl+Shift+P or Cmd+Shift+P) and type/select "Dev Containers: Reopen in Container".
- VS Code will build the Docker image (first time) and start the container based on your `docker-compose.yml`.
- Once the container is running, VS Code will connect to it. Your terminal within VS Code will now be _inside_ the container.
- Open a terminal in VS Code (Terminal > New Terminal).
- Start the Expo development server:

```
npx expo start
```

- Expo will start the Metro Bundler and display connection options (QR code, URLs).
- If you run into trouble, use `npx expo start --tunnel` instead.

### Option 2: Traditional Setup

1. Install dependencies

```
npm install
```

2. Start the app

```
npx expo start
```

In the output, you'll find options to open the app in a:

- Development build
- Android emulator
- iOS simulator
- Expo Go, a limited sandbox for trying out app development with Expo

You can start developing by editing the files inside the **app** directory. This project uses file-based routing.

### Collaboration via GitHub

1. Link Local Repo to Remote:
   - Copy the HTTPS or SSH URL provided by GitHub.
   - In your terminal (on the host machine or inside the dev container if Git is configured there), add the remote:

```bash
# Replace <the-github-repo-url> with the URL you copy from github
git remote add origin <the-github-repo-url>
```

Verify the remote:

```Bash
git remote -v
```

2. Push Your Code:
   - Push your initial commits to the main (or master) branch on GitHub:

```Bash
git push -u origin main # Or master
```

3. Team Collaboration:
   - team members can now clone the repository:

```Bash
git clone <the-github-repo-url>
```

- You need Docker, Docker Compose, and VS Code + Dev Containers extension installed.
- You simply open the cloned folder in VS Code and choose "Reopen in Container". The entire development environment, including dependencies and extensions, will be set up automatically inside Docker, identical to yours.
