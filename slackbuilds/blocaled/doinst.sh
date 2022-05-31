# Generate an /etc/locale.conf file using the system's 
# /etc/profile.d/lang.sh script:
grep -v -E '^(#|$)' /etc/profile.d/lang.sh > /etc/locale.conf

