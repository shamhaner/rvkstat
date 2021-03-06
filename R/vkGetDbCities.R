vkGetDbCities <- function(country_id = TRUE,
                          region_id = NULL,
                          q = NULL,
                          need_all = TRUE,
						  api_version  = NULL,
                          access_token = NULL){

  if(is.null(access_token)){
    stop("�� �������� access_token, ���� �������� �������� ������������.")
  }
  
  #������ �� ������� ����������
  if(is.null(country_id)){
  stop("�� �������� country_id, ���� �������� �������� ������������.")
  }
  
    #������ �� ������� ����������
  if(nchar(q) > 15 && !(is.null(q))){
  stop(paste0("� ��������� q ������������ ����� ������ � 15 ��������. �� ����� ������ ��������� �� ", nchar(q)," ��������!"))
  }
  
  api_version <- api_version_checker(api_version)
	
  if(need_all == TRUE){
    need_all <- 1
  } else {
    need_all <- 0
  }
  
  #�������������� ���� �����
  result  <- data.frame()
  
  
  #������������ ��������
  offset <- 0
  count <- 1000
  last_iteration <- FALSE
  
  while(last_iteration == FALSE){

  #��������� ������
  query <- paste0("https://api.vk.com/method/database.getCities?need_all=",need_all,"&country_id=",country_id,ifelse(!(is.null(region_id)),paste0("&region_id=",region_id),""),ifelse(!(is.null(q)),paste0("&q=",q),""),"&offset=",offset,"&count=",count,"&access_token=",access_token,"&v=",api_version)
  answer <- GET(query)
  stop_for_status(answer)
  dataRaw <- content(answer, "parsed", "application/json")
  
  #�������� ������ �� ������
  if(!is.null(dataRaw$error)){
    stop(paste0("Error ", dataRaw$error$error_code," - ", dataRaw$error$error_msg))
  }
  
  #������� ����������
  for(i in 1:length(dataRaw$response)){
    result  <- rbind(result,
                     data.frame(cid                  = ifelse(is.null(dataRaw$response[[i]]$cid), NA,dataRaw$response[[i]]$cid),
                                title                = ifelse(is.null(dataRaw$response[[i]]$title), NA,dataRaw$response[[i]]$title),
                                important            = ifelse(is.null(dataRaw$response[[i]]$important), NA,dataRaw$response[[i]]$important),
                                area                 = ifelse(is.null(dataRaw$response[[i]]$area), NA,dataRaw$response[[i]]$area),
                                region               = ifelse(is.null(dataRaw$response[[i]]$region), NA,dataRaw$response[[i]]$region),
                                stringsAsFactors = F))}
  
  if(length(dataRaw$response) < 1000){
    last_iteration <- TRUE}
  
  #������� offet
  offset <- offset + count
  }
  
  return(result)
}