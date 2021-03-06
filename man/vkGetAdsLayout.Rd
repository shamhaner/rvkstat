\name{vkGetAdsLayout}
\alias{vkGetAdsLayout}
\title{���������� �������� �������� ���� ��������� ����������.}
\description{������� vkGetAdsLayout ��� ����������� �������� ������ ��������� ���������� � �������� �� �������� ���� �� ���������� �������� ���������}
\usage{
vkGetAds(account_id = NULL, client_id = NULL, include_deleted = TRUE, campaign_ids = "null", ad_ids = "null", status_names = TRUE, api_version = NULL, access_token = NULL))
}
\arguments{
  \item{account_id}{������������� ���������� ��������, ������ ���� ��������� ��������� ��������� ����� �������� � ������ ������� vkGetAdAccounts.}
  \item{client_id}{������������� �������, � �������� ������������� ��������� ����������. �������� � ����������� ��� ��������� ��������.}
  \item{include_deleted}{���������� TRUE ��� FALSE, ����, �������� ������������� ������ �������� ����������.}
  \item{campaign_ids}{�������� ������, ������ �� ��������� ���������.}
  \item{ad_ids}{�������� ������, ������ �� ��������� �����������.}
  \item{status_names}{���������� TRUE ��� FALSE, ���� �������� TRUE �� ������ ���������� � ��� ������ ����� ���������� � ���� ��������� ��������, ���� �������� � �������� status_names �������� FALSE �� ������������� �������� ����� ���������� � ���� �� ID.}
  \item{api_version}{������ API � ������� �� ����������� ������, ������������� ��������.}
  \item{access_token}{����� ������� � API, ���������� � ������� ������� vkAuth ��� vkGetToken}
}
\details{
���� ������������ �������� ������� campaign_ids � ad_ids, �� �������� ����� ��������� ����������:
1. ���� id ���������� ������� � ad_ids, �� ��� ���������.
2. ���� ���������� ����������� ��������� ��������, ��� id ������ � campaign_ids, �� ��� ���������.
3. ���� ��������� ���������� � id, ��������� � ad_ids � ��� ����������� ��������, ��� id ������ � campaign_ids, �� ��� ��������� �������� ������������, �.�. ��� ��� ������� 2 �� ��������.

��������� �� ����� 2000 ���������� �� �� ����� ��� 2000 ��������. 

� ������ ������ ������� ����� ����� API ads.getAdsLayout, ������ ��� ����������� ��� ������ ����� �� ������ https://vk.com/dev/ads.getAdsLayout. 
}
\value{���� ����� �� ���������� ����������:
\item{1. id}{������������� ����������.}
\item{2. campaign_id}{������������� ��������.}
\item{3. ad_format}{������ ����������.}
\item{4. cost_type}{��� ������.}
\item{5. video}{1 � ���������� �������� �������������..}
\item{6. title}{��������� ����������.}
\item{7. description}{�������� ����������.}
\item{8. link_url}{������ �� ������������� ������.}
\item{9. link_domain}{����� �������������� �����.}
\item{10. preview_link}{������, ������� �� ������� ����� ����������� ��������� ���������� ���, ��� ��� �������� �� �����. ������ �������� � ������� 30 ����� ����� ���������� ������� vkGetAdsLayout.}
\item{11. image_src}{url ����������� ����������.}
}
\author{
Alexey Seleznev
}

\examples{
##����������� � ���������
my_tok <- vkAuth(app_id = 1,app_secret = "H2Pk8htyFD8024mZaPHm")
#�������� ������ ����������
my_vk_ads <- vkGetAdsLayout(account_id = 11111111, 
                            access_token = my_tok$access_token)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.