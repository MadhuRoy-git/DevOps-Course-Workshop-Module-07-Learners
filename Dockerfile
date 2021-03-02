FROM mcr.microsoft.com/dotnet/sdk:5.0
WORKDIR /DevOps-Course-Workshop-Module-07-Learners
COPY . /DevOps-Course-Workshop-Module-07-Learners
RUN dotnet build

RUN curl -fsSL https://deb.nodesource.com/setup_14.x | bash -
RUN apt-get install -y nodejs

WORKDIR /DevOps-Course-Workshop-Module-07-Learners/DotnetTemplate.Web
RUN npm install

RUN npm run build
ENTRYPOINT ["dotnet","run"]