\name{vkGetAdStatistics}
\alias{vkGetAdStatistics}
\title{���������� �� ��������� ���������� � ���������.}
\description{������� vkGetAdStatistics ���������� ���������� ����������� ������������� �� ��������� �����������, ���������, �������� ��� ����� ��������.}
\usage{
vkGetAdStatistics(account_id = NULL, ids_type = "office", ids = NULL, period = "overall", date_from = Sys.Date() - 30, date_to = Sys.Date(), access_token = NULL)
}
\arguments{
  \item{account_id}{������������� ���������� ��������, ������ ���� ��������� ��������� ��������� ����� �������� � ������ ������� vkGetAdAccounts.}
  \item{ids_type}{��� ������������� ��������, ������� ����������� � ��������� ids. ���������� �������� ad � ����������, campaign � ��������, client � �������, office � �������.}
  \item{ids}{������ id ������������� ����������, ��������, �������� ��� ��������, � ����������� �� ����, ��� ������� � ��������� ids_type.}
  \item{period}{������ ����������� ������ �� ����� day � ���������� �� ����, month � ���������� �� �������, overall � ���������� �� �� �����.��������� ����������� �������� ����������� date_from � date_to.}
  \item{date_from}{��������� ���� ��������� ���������� � ������� YYYY-MM-DD.}
  \item{date_to}{�������� ���� ��������� ���������� � ������� YYYY-MM-DD.}
  \item{access_token}{����� ������� � API, ���������� � ������� ������� vkAuth ��� vkGetToken}
}
\value{���� ����� �� ����������� ���������� �� ���������� ����������:
\item{1. id}{id ������� �� ��������� ids.}
\item{2. day}{(���� period ����� day) ���� � ������� YYYY-MM-DD.}
\item{3. month}{(���� period ����� month) � ���� � ������� YYYY-MM.}
\item{4. day_from}{(���� period ����� overall) ��������� ���� ��������� �������.}
\item{5. day_to}{(���� period ����� overall) �������� ���� ��������� �������.}
\item{6. type}{��� ������� �� ��������� ids_type.}
\item{7. spent}{����������� ��������.}
\item{8. impressions}{���������� ����������.}
\item{9. clicks}{���������� ���������� �����������.}
\item{10. reach}{(���� ids_type ����� ad ��� campaign � period ����� day ��� month) � �����.}
\item{11. video_views}{(���� ids_type ����� ad) � ��������� ����������� (��� ������������).}
\item{12. video_views_half}{(���� ids_type ����� ad) � ��������� �������� ����������� (��� ������������)}
\item{13. video_views_full}{(���� ids_type ����� ad) � ��������� ������ ����������� (��� ������������).}
\item{14. video_clicks_site}{(���� ids_type ����� ad) � �������� �� ���� ������������� �� ������������ (��� ������������).}
\item{15. join_rate}{(���� ids_type ����� ad ��� campaign) � ���������� � ������, �������, �������� �� ��������� �������� ��� ��������� ���������� (������ ���� � ���������� ������� ������ ������ �� ��������������� �������� ���������).}
}
\author{
Alexey Seleznev
}

\examples{
##����������� � ��
my_tok <- vkAuth(app_id = 1, app_secret = "H2Pk8htyFD8024mZaPHm")

#1.�������� ���������� �� ��������� ��������� � ������� ����
##1.1. �������� ������ ��������� ��������
camp <- vkGetAdCampaigns(account_id = 1, access_token = my_tok$access_token)
##1.2. �������� ���������� �� ��������� ���������
vk_stat_by_campaign <- vkGetAdStatistics(account_id = 1,
                                         ids_type = "campaign",
                                         ids = camp$id ,
                                         period = "day",
                                         date_from = "2010-01-01", 
                                         date_to = "2017-09-10",
                                         access_token = my_tok$access_token)
										
										
#2.�������� ���������� �� ����������� � ������� �������
##2.1. �������� ������ ��������� ��������
ads <- vkGetAds(account_id = account_id, access_token = my_tok$access_token)
##2.2. �������� ���������� �� �����������
vk_stat_by_ads <- vkGetAdStatistics(account_id = 1,
                                    ids_type = "ad",
                                    ids = ads$id ,
                                    period = "month",
                                    date_from = "2010-01-01", 
                                    date_to = "2017-09-10",
                                    access_token = my_tok$access_token)
			
			
#3.�������� ����� ���������� �� ���������� ��������, � ������ ������� ��������������� ��� id ���������� �������� ����� 1
vk_stat_by_account <- vkGetAdStatistics(account_id = 1,
                                        ids_type = "office",
                                        ids = 1,
                                        period = "overall",
                                        date_from = "2010-01-01", 
                                        date_to = "2017-09-10",
                                        access_token = my_tok$access_token)

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
