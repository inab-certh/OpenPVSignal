

directoryTest<-"TestCaseFiles"

ttlDir<-"turtle"




locateFieldsInReport<-function(report,str){
  ind<-grep(paste0("\t",str,":"), report)
  tReport<-report[ind]
  tReport<-gsub(paste0("\t",str,": "),"",tReport)
  tReport<-gsub(",",";",tReport)
  tReport
}



ttlList<-dir(ttlDir)

dir.create("shaclResults", showWarnings = FALSE)
for (opvsFile in ttlList)
{
  
  directoryInner<-dir(directoryTest)
  dir.create(gsub(".ttl","",opvsFile), showWarnings = FALSE)
  totalReport<-c()
  for (insideDir in directoryInner)
  {
    
    scriptList<-dir(paste0(directoryTest,"/",insideDir))
    for (sc in scriptList){
      print(paste0(insideDir,"/",sc))
      
      if (.Platform$OS.type=="windows"){
        currentDir<-gsub("/","\\\\",getwd())
        shell(paste0("pyshacl -s ",currentDir,"\\",directoryTest,"\\",insideDir,"\\",sc,
                     " -d ",currentDir,"\\turtle\\",opvsFile," >  ",currentDir,"\\",
                     gsub(".ttl","",opvsFile),"\\results_",
                     directoryTest,"_",insideDir,"_",gsub(".ttl","",sc),".txt"))

        
      }else{
        currentDir<-getwd()
        system(paste0("pyshacl -s ",currentDir,"/",directoryTest,"/",insideDir,"/",sc,
                     " -d ",currentDir,"/turtle/",opvsFile," >  ",currentDir,"/",
                     gsub(".ttl","",opvsFile),"/results_",
                     directoryTest,"_",insideDir,"_",gsub(".ttl","",sc),".txt"))
      }

      
      tempReport<-readLines(paste0(gsub(".ttl","",opvsFile),"/results_",
                                   directoryTest,"_",insideDir,"_",gsub(".ttl","",sc),".txt"))
      
      if (length(grep("False",tempReport[2]))>0){
        print("=================================")
        totalReport<-c(totalReport,tempReport)
        print(tempReport)
        
      }
      
    }
  }
  if (!is.null(totalReport)){
    
    
    tReport1<-locateFieldsInReport(totalReport,"Severity")    
    tReport2<-locateFieldsInReport(totalReport,"Source Shape")    
    tReport3<-locateFieldsInReport(totalReport,"Focus Node")    
    tReport4<-locateFieldsInReport(totalReport,"Message")

    
    a<-cbind(tReport1,tReport2,tReport3,tReport4)
    
    colnames(a)<-c("Severity","Shape","Node","Message")
    
    write.table(a,paste0("shaclResults/",gsub(".ttl",".csv",opvsFile)),row.names = F,
                sep=",")

  }

}



