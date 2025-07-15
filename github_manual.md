# Git and GitHub Command Manual

A concise manual of essential Git commands for using Git and GitHub effectively, including setup, workflow, branching, pushing, pulling, and troubleshooting.

---

## 1. Initial Setup
```bash
git config --global user.name "Koushik Bardhan"
git config --global user.email "koushikbardhan2000@gmail.com"
git config --list
```

---

## 2. Create or Initialize a Repository
```bash
git init
git clone https://github.com/username/repo.git
```

---

## 3. Basic Workflow
```bash
git status
git add filename
git add .
git commit -m "Your commit message"
git log
```

---

## 4. Branching
```bash
git branch new-branch
git checkout new-branch
git checkout -b new-branch
git merge branch-name
git branch -d branch-name
```

---

## 5. Connecting to GitHub

### HTTPS:
```bash
git remote add origin https://github.com/username/repo.git
```

### SSH:
```bash
git remote set-url origin git@github.com:username/repo.git
```

---

## 6. Push Changes
```bash
git push -u origin branch-name
git push
git push --all
```

---

## 7. Pull Changes
```bash
git fetch
git pull
```

---

## 8. View & Inspect
```bash
git branch
git diff
git log --oneline
git remote -v
```

---

## 9. Undo & Fix
```bash
git reset filename
git reset --soft HEAD~1
git clean -f
```

---

## 10. Advanced
```bash
git rebase branch-name
git stash
git stash apply
```

---

## 11. Git LFS
```bash
git lfs install
git lfs track "*.zip"
git add .gitattributes
```

---

## 12. Reverting Mistakes
```bash
git revert <commit-id>
git reset --hard <commit-id>
```

---

## 13. Troubleshooting
```bash
git config --global http.postBuffer 524288000
git config --global --unset http.postBuffer
```

---

# Git LFS (Large File Storage)

Git LFS is used to manage large files by storing them outside the main Git repository.

### Installation (Ubuntu/Debian):
```bash
sudo apt update
sudo apt install git-lfs
```

### Usage:
```bash
# Initialize Git LFS in your repo
git lfs install

# Track large file types (e.g., CSV, RData)
git lfs track "*.csv"
git lfs track "*.RData"

# Install if needed
pip install git-filter-repo

# Remove large files
git filter-repo --path final_annotated_data.csv --invert-paths
git filter-repo --path final_annotated_data_unique.csv --invert-paths
git filter-repo --path final_merged_data.csv --invert-paths
git filter-repo --path output/final_annotated_data_unique.csv --invert-paths

# Stage and commit all changes
git add .
git commit -m "Track large files with Git LFS"

# Force push to publish cleaned history and LFS-tracked files
git push -f origin main
```

> **Note:** Tracked files are stored outside the main Git repo to avoid GitHub's file size limits.
---

# Installation of Python packages from github-repo
### Clone the repo
```bash
git clone https://github.com/Blealtan/efficient-kan.git
```

### get inside the repo directiory and install (do not ignore the ".")
```bash
cd efficient-kan/
pip install -e .
```
---
