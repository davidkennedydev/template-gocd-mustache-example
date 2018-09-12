FROM fedora

WORKDIR /app
ADD . /app
VOLUME ./build.gocd.yaml

RUN dnf install -y rubygems
ENV PATH=$PATH:/root/.gem/ruby/2.4.0/bin
RUN gem install --user-install mustache; 

CMD cd template-gocd-pipeline-as-code && make
