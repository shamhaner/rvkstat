\name{vkGetGroupStatPostReach}
\alias{vkGetGroupStatPostReach}
\title{���������� ������� �� ����� ����������.}
\description{������� vkGetGroupStatPostReach ���������� ���������� ��� ������ �� �����..}
\usage{
vkGetGroupStatPostReach(owner_id = NULL, post_ids = NULL, api_version = NULL, access_token = NULL)
}
\arguments{
  \item{owner_id}{������������� ���������� � ��������� ������. ����������� �� ������ ������.}
  \item{post_ids}{����� ���������� �������������� �������, �������� �������� � ������ �� ���������� �������� ������ ��� 300 ��������� (����� ������) ������� �� ����� ����������.}
  \item{api_version}{������������� ��������, ����� ������ API � ������� ����� �������� ������.}
  \item{access_token}{����� ������� � API, ���������� � ������� ������� vkAuth ��� vkGetToken}
}
\value{���� ����� �� ���������� ����������:
\item{1. reach_viral}{��������� ����� (���� ������ ������������ � ������� ��������������� �������)}
\item{2. reach_ads}{��������� ����� (���� ������ ������������ � ������� ��������������� �������).}
\item{3. reach_subscribers}{����� �����������.}
\item{4. reach_total}{��������� �����.}
\item{5. links}{�������� �� ������.}
\item{6. to_group}{�������� � ����������.}
\item{7. join_group}{���������� � ����������.}
\item{8. report}{���������� ����� �� ������.}
\item{9. hide}{���������� �������� ������.}
\item{10. unsubscribe}{���������� ������������ ����������.}
\item{11. post_id}{������������� ������.}
}
\details{
���������� ������� � ��������� ������ �������� ������ ��� ��������� � ����������� ���������� �� 5000 � ����, � ����� ����������� ���������. 

�������� �������� � ������ �� ���������� �������� ������ ��� 300 ��������� (����� ������) ������� �� ����� ����������. 
� ���� ���������� ����� ��������� ����� ������. �� �������� ��������� �� ��������� �������� - https://vk.com/dev/errors.
}
\author{
Alexey Seleznev
}
\examples{
## ����������� � ��
my_tok <- vkAuth(app_id = 1, app_secret = "H2Pk8htyFD8024mZaPHm")

## �������� ������ ��������� ����������
my_vk_wall  <- vkGetUserWall(user_id = -111111,
                             access_token = my_tok$access_token) 
							 
## �������� ��������� ���������� �� ��������� 300 ������� ����������							 
post_reach <- vkGetGroupStatPostReach(owner_id = -2222222,
                                      post_ids = my_vk_wall$id,
                                      access_token = my_tok$access_token)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
