\name{vkGetAdBudget}
\alias{vkGetAdBudget}
\title{��������� �������� ������� ���������� �������� ���������.}
\description{������� vkGetAdBudget ���������� ������� ������� ������� ���������� �������� ���������.}
\usage{
vkGetAdBudget(account_id = NULL, access_token = NULL)
}
\arguments{
  \item{account_id}{������������� ���������� ��������, ������ ���� ��������� ��������� ��������� ����� �������� � ������ ������� vkGetAdAccounts.}
  \item{access_token}{����� ������� � API, ���������� � ������� ������� vkAuth ��� vkGetToken}
}
\value{������� ������� ���������� �������� ��������� � ���� ��������� ��������.}
\author{
Alexey Seleznev
}

\examples{
##����������� � ��
my_tok <- vkAuth(app_id = 1, app_secret = "H2Pk8htyFD8024mZaPHm")

#�������� ������� ������ �� ���������� ��������
vk_budget <- vkGetAdBudget(account_id = 1, access_token = my_tok$access_token)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
