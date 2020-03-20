FROM ubuntu:16.04
RUN apt-get update && apt-get install -y wget libxcb1 libgl1 fonts-wqy-microhei xkb-data \
  && wget "https://airtestproject.s3.netease.com/downloads/AirtestIDE/AirtestIDE_2020-01-21_py3_ubuntu16-04.deb?next_action=download&region=idc-ba-v2" -O airtestIDE_2020-01-21_py3_ubuntu16-04.deb \
  && dpkg -i airtestIDE_2020-01-21_py3_ubuntu16-04.deb \
  && rm -f airtestIDE_2020-01-21_py3_ubuntu16-04.deb

CMD ["/usr/lib/AirtestIDE"]
