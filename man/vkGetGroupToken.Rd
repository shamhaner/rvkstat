\name{vkGetGroupToken}
\alias{vkGetGroupToken}
\title{�������� ��������� ����� ������� ���������� ���������}
\description{����� ���� ��������� �������� � API �� ����� ������, ������� ��� ��������� ��������. ��������, � ��� ������� �� ������ �������� ����������� ���������� �� ���������, ����������� � ��� �����. 
� ������ ������� ���������� ����� �������� �� ������, ������� ����� ����������� ������� � ����� ������ (https://vk.com/dev/methods). 
������� vkGetGroupToken �������� ���� ������ � ���������� �� ����� Implicit flow (https://vk.com/dev/implicit_flow_group).}
\usage{
vkGetGroupToken(appId = NULL, group_ids = NULL)
}
\arguments{
  \item{appId}{ID ������ ���������� ���������, ������� ��������� � ���� "ID ����������" � ���������� ����������.}
  \item{group_ids}{������ ���������� ID ����� � ������� �� ������ �������� ��� �������.}
}
\value{������ ���������� ����� ������� � �������}
\author{Alexey Seleznev}
\examples{
##---- Get vk api token, ��� 1 ��� ID ����������, � 11,22,33 ��� ID �����.
myToken <- vkGetGroupToken(appId = 1, group_ids = c(11,22,33))
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
