FROM ekidd/rust-musl-builder:stable-openssl11

#remove the old registry info
RUN sed -i '/\[source.crates-io\]/,+1 d' /home/rust/.cargo/config

# add new registry
RUN echo "\n \
[source.crates-io]\n \
registry = \"https://github.com/rust-lang/crates.io-index\"\n \
replace-with = 'ustc'\n \
[source.ustc]\n \
registry = \"git://mirrors.ustc.edu.cn/crates.io-index\"" >> /home/rust/.cargo/config
