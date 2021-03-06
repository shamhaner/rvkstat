\name{vkGetAdPostsReach}
\alias{vkGetAdPostsReach}
\title{���������� �� ������ ��������� ������� ���������.}
\description{������� vkGetAdPostsReach ���������� ��������� ���������� �� ������ ��������� ������� �� ���������� � �������� ��� ����������� ������� ����������.}
\usage{
vkGetAdPostsReach(account_id = NULL, ids_type = "campaign", ids = NULL, access_token = NULL)
}
\arguments{
  \item{account_id}{������������� ���������� ��������, ������ ���� ��������� ��������� ��������� ����� �������� � ������ ������� vkGetAdAccounts.}
  \item{ids_type}{��� ������������� ��������, ������� ����������� � ��������� ids. ���������� �������� ad � ����������, campaign � ��������.}
  \item{ids}{������ id ������������� ����������, ��������, �������� ��� ��������, � ����������� �� ����, ��� ������� � ��������� ids_type.}
  \item{access_token}{����� ������� � API, ���������� � ������� ������� vkAuth ��� vkGetToken}
}
\value{���� ����� �� ����������� ���������� �� ���������� ����������:
\item{1. id}{ID ������� �� ��������� ids.}
\item{2. reach_subscribers}{����� �����������.}
\item{3. reach_total}{��������� �����.}
\item{4. links}{�������� �� ������.}
\item{5. to_group}{�������� � ����������.}
\item{6. join_group}{���������� � ����������.}
\item{7. report}{���������� ����� �� ������.}
\item{8. hide}{���������� ������� ������.}
\item{9. unsubscribe}{���������� ������������ ����������.}
\item{10. video_views_start}{���������� ������� ��������� �����.}
\item{11. video_views_3s}{���������� ��������� ����� �� 3 ������.}
\item{12. video_views_25p}{���������� ��������� ����� �� 25 ���������.}
\item{13. video_views_50p}{���������� ��������� ����� �� 50 ���������.}
\item{14. video_views_75p}{���������� ��������� ����� �� 75 ���������.}
\item{15. video_views_100p}{���������� ��������� ����� �� 100 ���������.}
}
\details{
���������� �� ��������� ����� �������� ������ ��� ��������, ��������� ������� � 20 ������� 2016 ����.
���� video_views_start, video_views_3s, video_views_25p, video_views_50p, video_views_75p, video_views_100p � ������� �� ���������� ����� ������������ ������ ��� ���������� ��� �������� � �����, ��������� ����� 26 ������ 2017 ����.
}
\author{
Alexey Seleznev
}

\examples{
##����������� � ��
my_tok <- vkAuth(app_id = 1, app_secret = "H2Pk8htyFD8024mZaPHm")

##�������� ������ ��������� ��������
camp <- vkGetAdCampaigns(account_id = 1, access_token = my_tok$access_token)

##�������� ���������� �� ��������� ���������
post_reach <- vkGetAdPostsReach(account_id = 1600134264,
                                ids_type = "campaign",
                                ids = camp$id,
                                access_token = my_tok$access_token)

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
