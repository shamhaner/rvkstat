\name{vkGetDbCountries}
\alias{vkGetDbCountries}
\title{������ �����.}
\description{������� vkGetDbCountries ���������� ������ �����.}
\usage{
vkGetDbCountries(need_all = TRUE, code = NULL, access_token = NULL)
}
\arguments{
  \item{need_all}{���������� TRUE ��� FALSE, ���� - ������� ������ ���� �����.}
  \item{code}{��������� ������, ������������� ���� ����� � ��������� ISO 3166-1 alpha-2, ��� ������� ���������� ������ ����������. ������ c("RU","UA","BY"), ������ ���� ����� ����� ���������� �� ������ - https://vk.com/dev/country_codes.}
  \item{access_token}{����� ������� � API, ���������� � ������� ������� vkAuth ��� vkGetToken}
}
\value{���� ����� �� ����������� ���������� �� ���������� ����������:
\item{1. cid}{������������� ������.}
\item{2. title}{�������� ������.}
}
\details{
���� �� ������ ��������� need_all � code, �� ������������ ������� ������ �����, ������������� �������� ������ � ������ �������� ������������. ���� ����� �������� need_all, �� ����� ��������� ������ ���� �����. ���� ����� �������� code, �� ����� ���������� ������ ������ � �������������� ISO 3166-1 alpha-2 ������.
������ ���� ����� ����� ����� �������� �� ������ - https://vk.com/dev/country_codes
}
\author{
Alexey Seleznev
}

\examples{
##����������� � ��
my_tok <- vkAuth(app_id = 1, app_secret = "H2Pk8htyFD8024mZaPHm")

##�������� ������ �����
vk_countries <- vkGetDbCountries(need_all = T,
                                 code = c("RU","UA","BY"),
                                 access_token = my_tok$access_token)

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
