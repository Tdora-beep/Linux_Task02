# Linux Command Line Practical Task 02

## Objective

Demonstrate understanding of basic Linux commands by completing the practical task as a newly created user in Kali Linux.

> **Source of truth:** Linux Task 02 PDF provided with this project.

## Environment

- Operating system: Kali Linux
- User created for the task: `student01`

## Task Requirements

### Step 1 — Create and Switch to a New User
- Open the terminal.
- Create a new user called `student01`.
- Set a password.
- Add the user to the sudo group if required.
- Switch to the new user using `su` or `login`.
- Confirm the logged-in user with `whoami`.

### Step 2 — Directory & File Management
Inside the new user's home directory:
- Create `project`.
- Inside `project`, create `docs`, `scripts`, and `bin`.
- In `docs`, create `report.txt` with the required initial line using `echo`.
- Use `ls -la`.
- Create `.secret.txt` in `docs` containing `Top Secret.`

### Step 3 — Edit and Move Files
- Open `report.txt` with `nano` and add the required second line.
- Copy `report.txt` to `scripts`.
- Move `.secret.txt` to `bin` and rename it `classified.txt`.
- Create `scripts/install.sh` with the required Bash content.

### Step 4 — Permissions with chmod
- Make `install.sh` executable by all users.
- Remove read permission for others from `classified.txt`.
- Create `docs/admin_notes.txt`.
- Set `admin_notes.txt` so only its owner can read and write it.

### Step 5 — Clean-Up and Final Touches
- Delete `admin_notes.txt`.
- Create `project/backup`.
- Copy the entire content of `docs` and `scripts` into `backup`.

### Final Checks
- Return to the home directory.
- Run `tree project`; if `tree` is not installed, the task says to install it with `sudo apt install tree`.
- Use `ls -la` to confirm permissions and file locations.

### Bonus — Optional
- Use `history` to list commands.
- Redirect the history output to `commands_used.txt` in the home directory using `>`.

## Important

This repository is a **prepared GitHub-ready workflow**. The actual Linux commands must be run in Kali Linux, and real screenshots/outputs should be added to `evidence/` after verification.

No command output or screenshot has been fabricated.
