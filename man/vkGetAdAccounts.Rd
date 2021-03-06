\name{vkGetAdAccounts}
\alias{vkGetAdAccounts}
\title{���������� ������ ��������� ���������}
\description{������� vkgetAccounts ���������� ������ �������� ��������� ���������.}
\usage{
vkGetAdAccounts(access_token = NULL)
}
\arguments{
  \item{access_token}{����� ������� � API, ���������� � ������� ������� vkAuth ��� vkGetToken}
}
\author{
Alexey Seleznev
}
\value{���� ����� �� ������� ��������� ��������� � �� ���������� �� ���������� ����������:
\item{1. account_id}{������������� ���������� ��������.}
\item{2. account_type}{��� ���������� ��������.}
\item{3. account_status}{������ ���������� ��������. (1 � �������, 0 � ���������)}
\item{4. access_role}{����� ������������ � ��������� ��������. }
}
\examples{
##����������� � ��
my_tok <- vkAuth(app_id = 1,app_secret = "H2Pk8htyFD8024mZaPHm")

##������ ������ ��������� ��������� ���������
my_vk_acc <- vkGetAdAccounts(my_tok$access_token)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
