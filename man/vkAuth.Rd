\name{vkAuth}
\alias{vkAuth}
\title{����������� � ���������}
\description{������� vkAuth ��� ����������� �������� ����� ��� ������� � API ��������� ����� Authorization Code Flow - https://vk.com/dev/authcode_flow_user}
\usage{
vkAuth(app_id = NULL, app_secret = NULL, apiVersion = "5.68")
}
\arguments{
  \item{app_id}{ID ����������, ����� ��� ����� �� �������� ��������� ����������.}
  \item{app_secret}{���������� ���� ����������, ����� ��� ����� �� �������� ��������� ����������.}
  \item{apiVersion}{������ API.}
}
\value{������ ������� ������ ��� ������ � API ���������}
\author{
Alexey Seleznev
}

\examples{
##Auth in VK
my_tok <- vkAuth(app_id = 1,app_secret = "H2Pk8htyFD8024mZaPHm")
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.