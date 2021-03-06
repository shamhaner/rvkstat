\name{vkGetAdClients}
\alias{vkGetAdClients}
\title{������ �������� ���������.}
\description{������� vkGetAdClients ���������� ������ �������� ���������� ���������.}
\usage{
vkGetAdClients(account_id = NULL, access_token = NULL)
}
\arguments{
  \item{account_id}{������������� ���������� ��������, ������ ���� ��������� ��������� ��������� ����� �������� � ������ ������� vkGetAdAccounts.}
  \item{access_token}{����� ������� � API, ���������� � ������� ������� vkAuth ��� vkGetToken}
}
\value{���� ����� �� ����������� ���������� �� ���������� ����������:
\item{1. id}{������������� �������.}
\item{2. name}{�������� �������.}
\item{3. day_limit}{������� ����� ������� � ������.}
\item{4. all_limit}{����� ����� ������� � ������.}
}
\author{
Alexey Seleznev
}

\examples{
##����������� � ��
my_tok <- vkAuth(app_id = 1, app_secret = "H2Pk8htyFD8024mZaPHm")

##�������� ������ �������� �� ���������� ��������
vk_clients <- vkGetAdClients(account_id = 1, access_token = my_tok$access_token)

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
