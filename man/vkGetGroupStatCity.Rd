\name{vkGetGroupStatCity}
\alias{vkGetGroupStatCity}
\title{���������� ����������� ���������� ��������� � ������� �������.}
\description{������� vkGetGroupStatCity ��������� �������� ������ � ������ ����������� ���������� � ������� ���.}
\usage{
vkGetGroupStatCity(date_from = Sys.Date(), date_to = Sys.Date(), group_id = NULL, access_token = NULL)
}
\arguments{
  \item{date_from}{��������� ���� ��������� ���������� � ������� YYYY-MM-DD.}
  \item{date_to}{�������� ���� ��������� ���������� � ������� YYYY-MM-DD.}
  \item{group_id}{������������� ����������.}
  \item{access_token}{����� ������� � API, ���������� � ������� ������� vkAuth ��� vkGetToken}
}
\value{���� ����� �� ����������� �� ����������� ���������� �� ���������� ����������:
\item{1. Date}{���� �� ������� ��������� ����������.}
\item{2. Visitors}{���������� ���������� �����������.}
\item{3. CityID}{������������� ������ ��� "other" ��� ������� ������� ������.}
\item{4. CityName}{�������� ������.}
}
\author{Alexey Seleznev}
\examples{
##����������� � ��
my_tok <- vkAuth(app_id = 1,app_secret = "H2Pk8htyFD8024mZaPHm")

##�������� ������ �� ������������� � ������� �������
communityDataCity <- vkGetGroupStatCity(date_from = "2016-01-01",
										date_to = "2016-04-01",
										group_id = 1,
										access_token = my_tok$access_token)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
