#' 查询销售订单统计表
#'
#' @param token 中台数据库token
#' @param FNumber 单据编号
#' @param FName ERP账套名
#'
#' @return
#' @export
#'
#' @examples
#' saleOrderTable_query('B3455A86-2376-4EF3-8000-39AA8B61B759','2023-08-01','2023-08-22','否','全部',"'标准销售订单','样品销售订单'",'102')
saleOrderTable_query<- function(token,FStartDate,FEndDate,FIsFree,Fstatus,FBIllType,FOrgNumber){
  #注册python模板
  mdl <- tsda::import('mdlKrSaleStatRptpy.main')
  
  res <- mdl$saleOrderTable_query(token,FStartDate,FEndDate,FIsFree,Fstatus,FBIllType,FOrgNumber)
  #返回结果
  return(res)
  
}

