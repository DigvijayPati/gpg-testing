#
# New build container to build and deploy SOMANET Motion firmware
#

FROM synapticon/xtimecomposer

# Additional necessary packet
RUN apt-get install -y zip python3
