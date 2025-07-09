\name{github_manual}
\alias{github_manual}
\title{Git and GitHub Command Manual}
\description{
  A concise manual of essential Git commands for using Git and GitHub effectively, including setup, workflow, branching, pushing, pulling, and troubleshooting.
}
\details{

  \strong{1. Initial Setup}
  \preformatted{
    git config --global user.name "Koushik Bardhan"
    git config --global user.email "koushikbardhan2000@gmail.com"
    git config --list
  }

  \strong{2. Create or Initialize a Repository}
  \preformatted{
    git init
    git clone https://github.com/username/repo.git
  }

  \strong{3. Basic Workflow}
  \preformatted{
    git status
    git add filename
    git add .
    git commit -m "Your commit message"
    git log
  }

  \strong{4. Branching}
  \preformatted{
    git branch new-branch
    git checkout new-branch
    git checkout -b new-branch
    git merge branch-name
    git branch -d branch-name
  }

  \strong{5. Connecting to GitHub}
  \emph{HTTPS:}
  \preformatted{
    git remote add origin https://github.com/username/repo.git
  }
  \emph{SSH:}
  \preformatted{
    git remote set-url origin git@github.com:username/repo.git
  }

  \strong{6. Push Changes}
  \preformatted{
    git push -u origin branch-name
    git push
    git push --all
  }

  \strong{7. Pull Changes}
  \preformatted{
    git fetch
    git pull
  }

  \strong{8. View & Inspect}
  \preformatted{
    git branch
    git diff
    git log --oneline
    git remote -v
  }

  \strong{9. Undo & Fix}
  \preformatted{
    git reset filename
    git reset --soft HEAD~1
    git clean -f
  }

  \strong{10. Advanced}
  \preformatted{
    git rebase branch-name
    git stash
    git stash apply
  }

  \strong{11. Git LFS}
  \preformatted{
    git lfs install
    git lfs track "*.zip"
    git add .gitattributes
  }

  \strong{12. Reverting Mistakes}
  \preformatted{
    git revert <commit-id>
    git reset --hard <commit-id>
  }

  \strong{13. Troubleshooting}
  \preformatted{
    git config --global http.postBuffer 524288000
    git config --global --unset http.postBuffer
  }

}

\strong{Git LFS (Large File Storage)}

Git LFS is used to manage large files by storing them outside the main Git repository.

\emph{Installation (Ubuntu/Debian):}

\preformatted{
  sudo apt update
  sudo apt install git-lfs
}

\emph{Usage:}

\preformatted{
  # Initialize Git LFS in your repo
  git lfs install

  # Track large file types (e.g., CSV, RData)
  git lfs track "*.csv"
  git lfs track "*.RData"

  # Stage and commit all changes
  git add .
  git commit -m "Track large files with Git LFS"

  # Force push to publish cleaned history and LFS-tracked files
  git push -f origin main
}

\emph{Note:} Tracked files are stored outside the main Git repo to avoid GitHub's file size limits.


