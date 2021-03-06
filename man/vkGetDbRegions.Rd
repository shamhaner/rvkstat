\name{vkGetDbRegions}
\alias{vkGetDbRegions}
\title{������ �����.}
\description{������� vkGetDbRegions ���������� ������ �����.}
\usage{
vkGetDbRegions(country_id = NULL, q = NULL, access_token = NULL)
}
\arguments{
  \item{country_id}{������������� ������, ���������� � ������� ������� vkGetDbCountries.}
  \item{q}{������ ���������� �������. ��������, ���. ������������ ����� ������ � 15 ��������.}
  \item{access_token}{����� ������� � API, ���������� � ������� ������� vkAuth ��� vkGetToken}
}
\value{���� ����� �� ����������� ���������� �� ���������� ����������:
\item{1. region_id}{������������� �������.}
\item{2. title}{�������� �������.}
}
\details{
���� �� ����� �������� q, �� ����� ��������� ������ ���� �������� � �������� ������. ���� ����� �������� q, �� ����� ��������� ������ ��������, ������� ���������� ���������� �������.
}
\author{
Alexey Seleznev
}

\examples{
##����������� � ��
my_tok <- vkAuth(app_id = 1, app_secret = "H2Pk8htyFD8024mZaPHm")

##�������� ������ ������� ��� �������, �.�. id ������� = 2
vk_regions  <- vkGetDbRegions(country_id = 2,
                              access_token = my_tok$access_token)

##�������� ������ ������� ������� �� ������� "���"
vk_regions_search  <- vkGetDbRegions(country_id = 2,
                                     q = "���",
                                     access_token = my_tok$access_token)


}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
