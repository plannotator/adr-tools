mkdir -p doc/adr
printf '# 1. CRLF Title\r\n\r\n## Status\r\n\r\nAccepted\r\n' > doc/adr/0001-crlf-title.md
_adr_title 1 | od -An -t x1
