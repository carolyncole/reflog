# Git
## Happy Path
1. `git checkout main`
1. `git pull`
1. `git checkout -b new-feature`
1. `git add -u`
1. `git commit -m "My new feature is great"`
1. `bundle exec rspec`
1. `bundle exec rubocop -a`
1. `git commit --amend`
1. `git push`
## Unhappy Path: Accidentail amend
1. `git checkout main`
1. `git pull`
1. `git checkout -b new-feature`
1. `git add -u`
1. `bundle exec rspec`
1. `bundle exec rubocop -a`
1. `git commit --amend`
1. **OH NO** I commited to another person's commit
1. `git reflog`
1. `git reset HEAD <hash>`
## Unhappy Path: Detached Head
1. `git checkout main`
1. `git pull`
1. `git checkout -b new-feature`
1. `git add -u`
1. `git commit -m "My new feature is great"
1. `git rebase main`
1. **Conflict**
1. `git commit -m "did some good stuff"
1. **OH NO** I commited to while rebasing... Now I have a detached head
1. `git reflog`
1. `git reset HEAD <hash>`
## Unhappy Path: Impossible merge
1. `git checkout main`
1. `git pull`
1. `git checkout -b new-feature`
1. `git add -u`
1. `git commit -m "My new feature is great"
1. `git add -u`
1. `git commit -m "My new feature has more stuff"
1. `git add -u`
1. `git commit -m "My new feature has this stuff too"
1. **I've been doing this a long time** Main has move on a bit
1. `git rebase -i HEAD~3`
1. squash into one commit
1. git log
1. git checkout main
1. git checkout -b new-branch
1. git cherry-pick <hash>
