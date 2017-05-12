#!/bin/sh
#
# Setup cloudfront_prefix environment variable
#
echo "-----> Adding cloudfront_prefix setup script"
if [[ $CLOUDFRONT_PREFIX ]]; then
  cat > "$APP_CHECKOUT_DIR"/.profile.d/cloudfront_url.sh <<EOF
    #!/bin/bash
    export CLOUDFRONT_PREFIX=$CLOUDFRONT_PREFIX
  EOF
fi
