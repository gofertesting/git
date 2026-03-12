#!/bin/sh
set -e

case "$1" in
  clone)
    shift
    # Last argument is the destination directory
    while [ $# -gt 1 ]; do shift; done
    dest="$1"

    cat > "$dest/demo.tf" <<'EOF'
resource "null_resource" "demo" {}

output "demo" {
  value = null_resource.demo.id
}
EOF

    mkdir -p "$dest/stack"
    cat > "$dest/stack/demo.tf" <<'EOF'
resource "null_resource" "demo" {}

output "demo" {
  value = null_resource.demo.id
}
EOF
    ;;
esac
