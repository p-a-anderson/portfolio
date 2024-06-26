#take some detailed CPI breakdowns and transform it into a color coded treemap for ease of interpetation.

#configure data file location.
cpi_data_directory<-"C:/Users/Patrick Anderson/Downloads"
cpi_data_file_name<-"partialL4.xlsx"


#define the heatmap palette.
pal<-c("#EDF2FB","#E2EAFC","#D7E3FC","#CCDBFD","#C1D3FE","#B6CCFE","#ABC4FF")


#make sure we are pointed at the correct directory
setwd(cpi_data_directory)

cwd <- getwd()

if (cwd == cpi_data_directory)
{
#libraries
	library(treemap)
	library(readxl)
	
	treemap(read_excel(cpi_data_file_name)
			,index=c("Expenditure Category")
			,vSize="Weighting"
			,palette=pal
	)
}



# var i = jQuery("tr:has(p.sub4)")
# i[4].querySelector("td").innerText
# i[4].querySelectorAll("td")[0].innerText 
# i[4].querySelectorAll("td")[1].innerText 

