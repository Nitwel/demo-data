workflow "Deploy to Demo" {
  on = "push"
  resolves = ["maddox/actions/ssh@master"]
}

action "maddox/actions/ssh@master" {
  uses = "maddox/actions/ssh@master"
  args = "cd /var/www/sql && git pull"
  secrets = [
    "PORT",
    "HOST",
    "USER",
    "PRIVATE_KEY",
  ]
}
