FROM blang/latex
RUN git clone https://github.com/NVoronchev/russian-post-C5-addr.git
WORKDIR /data/russian-post-C5-addr
RUN cp -a ./Pechkin/dvips /usr/local/share/texmf && \
    cp -a ./Pechkin/fonts /usr/local/share/texmf && \
    mkdir -p /etc/texmf/updmap.d/; echo -e "# Pechkin\nMap Pechkin.map" | tee /etc/texmf/updmap.d/20Pechkin.cfg &&\
    mkdir -p /etc/texmf/updmap.d/; echo -e "# Pechkin\nMap Pechkin.map" | tee /etc/texmf/updmap.d/20Pechkin.cfg &&\
    mktexlsr &&\
    update-updmap &&\
    mktexlsr &&\
    updmap-sys &&\
    mktexlsr
