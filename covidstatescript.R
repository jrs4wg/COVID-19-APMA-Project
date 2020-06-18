library(ggplot2)
library(readr)
library(dplyr)
install.packages("gridExtra")
library(gridExtra)
state_case_death <- read_csv("associatedpress-johns-hopkins-coronavirus-case-tracker/associatedpress-johns-hopkins-coronavirus-case-tracker/3_cases_and_deaths_by_state_timeseries.csv")
View(state_case_death)

#THIS DATA IS FROM DATA.WORLD AP COVID DATA, updated daily

Alabamadata<-filter(state_case_death, state_case_death$state=='Alabama')
alabamaplot<-ggplot(data=Alabamadata, aes(x=Alabamadata$date, y =cumulative_cases))+geom_point()
grid.arrange(alaskaplot,alabamaplot,arizonaplot,arkansasplot,californiaplot,coloradoplot,Connecticutplot,delewareplot,floridaplot,Georgiaplot,hawaiiplot,idahoplot)
grid.arrange(illinoisplot,indianaplot,iowaplot,kansasplot,kentuckyplot,louisianaplot,maineplot,marylandplot,Massachusettsplot,Michiganplot,Minnesotaplot,Mississippiplot)
grid.arrange(Missouriplot,Montanaplot,Nebraskaplot,Nevadaplot,NewHampshireplot,NewJerseyplot,NewMexicoplot,NewYorkplot,NorthCarolinaplot,NorthDakotaplot,Ohioplot,Oklahomaplot)
grid.arrange(Washingtonplot,Oregonplot,Pennsylvaniaplot,RhodeIslandplot,SouthCarolinaplot,SouthCarolinaplot,SouthCarolinaplot,Tennesseeplot,Texasplot,Utahplot,Vermontplot,Virginiaplot)
grid.arrange(WestVirginiaplot,Wisconsinplot,Wyomingplot)

#This is how im making the dataframe for each state
Alaskadata<-filter(state_case_death, state_case_death$state=='Alaska')
#Plotting the data points. The "geom_vline()" adds a vertical line at a date you want to look at 
ggplot(data=Alaskadata, aes(x=Alaskadata$date, y =cumulative_cases))+geom_point()+geom_point()+geom_vline(xintercept=as.Date("2020-05-25"),linetype=4)+geom_vline(xintercept=as.Date("2020-05-25"),linetype=4)

Arizonadata<-filter(state_case_death, state_case_death$state=='Arizona')
arizonaplot<-ggplot(data=Arizonadata, aes(x=Arizonadata$date, y =cumulative_cases))+geom_point()

Arkansasdata<-filter(state_case_death, state_case_death$state=='Arkansas')
arkansasplot<-ggplot(data=Arkansasdata, aes(x=Arkansasdata$date, y =cumulative_cases))+geom_point()

Californiadata<-filter(state_case_death, state_case_death$state=='California')
californiaplot<-ggplot(data=Californiadata, aes(x=Californiadata$date, y =cumulative_cases))+geom_point()

Alabamadata<-filter(state_case_death, state_case_death$state=='Alabama')
ggplot(data=Alabamadata, aes(x=Alabamadata$date, y =cumulative_cases))+geom_point()+geom_vline(xintercept=as.Date("2020-04-30"),linetype=4)+geom_vline(xintercept=as.Date("2020-05-13"),linetype=4)

Coloradodata<-filter(state_case_death, state_case_death$state=='Colorado')
ggplot(data=Coloradodata, aes(x=Coloradodata$date, y =cumulative_cases))+geom_point()+geom_vline(xintercept=as.Date("2020-04-26"),linetype=4)+geom_vline(xintercept=as.Date("2020-05-09"),linetype=4)


Connecticutdata<-filter(state_case_death, state_case_death$state=='Connecticut')
Connecticutplot<-ggplot(data=Connecticutdata, aes(x=Connecticutdata$date, y =cumulative_cases))+geom_point()

Delawaredata<-filter(state_case_death, state_case_death$state=='Delaware')
delewareplot<-ggplot(data=Delawaredata, aes(x=Delawaredata$date, y =cumulative_cases))+geom_point()

Floridadata<-filter(state_case_death, state_case_death$state=='Florida')
floridaplot<-ggplot(data=Floridadata, aes(x=Floridadata$date, y =cumulative_cases))+geom_point()

Georgiadata<-filter(state_case_death, state_case_death$state=='Georgia')
ggplot(data=Georgiadata, aes(x=Georgiadata$date, y =cumulative_cases))+geom_point()+geom_vline()

Hawaiidata<-filter(state_case_death, state_case_death$state=='Hawaii')
hawaiiplot<-ggplot(data=Hawaiidata, aes(x=Hawaiidata$date, y =cumulative_cases))+geom_point()

Idahodata<-filter(state_case_death, state_case_death$state=='Idaho')
idahoplot<-ggplot(data=Idahodata, aes(x=Idahodata$date, y =cumulative_cases))+geom_point()

Illinoisdata<-filter(state_case_death, state_case_death$state=='Illinois')
illinoisplot<-ggplot(data=Illinoisdata, aes(x=Illinoisdata$date, y =cumulative_cases))+geom_point()

Indianadata<-filter(state_case_death, state_case_death$state=='Indiana')
indianaplot<-ggplot(data=Indianadata, aes(x=Indianadata$date, y =cumulative_cases))+geom_point()

Iowadata<-filter(state_case_death, state_case_death$state=='Iowa')
iowaplot<-ggplot(data=Iowadata, aes(x=Iowadata$date, y =cumulative_cases))+geom_point()

Kansasdata<-filter(state_case_death, state_case_death$state=='Kansas')
kansasplot<-ggplot(data=Kansasdata, aes(x=Kansasdata$date, y =cumulative_cases))+geom_point()

Marylanddata<-filter(state_case_death, state_case_death$state=='Maryland')
marylandplot<-ggplot(data=Marylanddata, aes(x=Marylanddata$date, y =cumulative_cases))+geom_point()

Kentuckydata<-filter(state_case_death, state_case_death$state=='Kentucky')
kentuckyplot<-ggplot(data=Kentuckydata, aes(x=Kentuckydata$date, y =cumulative_cases))+geom_point()

Louisianadata<-filter(state_case_death, state_case_death$state=='Louisiana')
louisianaplot<-ggplot(data=Louisianadata, aes(x=Louisianadata$date, y =cumulative_cases))+geom_point()

Mainedata<-filter(state_case_death, state_case_death$state=='Maine')
maineplot<-ggplot(data=Mainedata, aes(x=Mainedata$date, y =cumulative_cases))+geom_point()

Massachusettsdata<-filter(state_case_death, state_case_death$state=='Massachusetts')
Massachusettsplot<-ggplot(data=Massachusettsdata, aes(x=Massachusettsdata$date, y =cumulative_cases))+geom_point()

Michigandata<-filter(state_case_death, state_case_death$state=='Michigan')
Michiganplot<-ggplot(data=Michigandata, aes(x=Michigandata$date, y =cumulative_cases))+geom_point()

Minnesotadata<-filter(state_case_death, state_case_death$state=='Minnesota')
Minnesotaplot<-ggplot(data=Minnesotadata, aes(x=Minnesotadata$date, y =cumulative_cases))+geom_point()

Mississippidata<-filter(state_case_death, state_case_death$state=='Mississippi')
Mississippiplot<-ggplot(data=Mississippidata, aes(x=Mississippidata$date, y =cumulative_cases))+geom_point()

Missouridata<-filter(state_case_death, state_case_death$state=='Missouri')
Missouriplot<-ggplot(data=Missouridata, aes(x=Missouridata$date, y =cumulative_cases))+geom_point()

Montanadata<-filter(state_case_death, state_case_death$state=='Montana')
Montanaplot<-ggplot(data=Montanadata, aes(x=Montanadata$date, y =cumulative_cases))+geom_point()

Nebraskadata<-filter(state_case_death, state_case_death$state=='Nebraska')
Nebraskaplot<-ggplot(data=Nebraskadata, aes(x=Nebraskadata$date, y =cumulative_cases))+geom_point()

Nevadadata<-filter(state_case_death, state_case_death$state=='Nevada')
Nevadaplot<-ggplot(data=Nevadadata, aes(x=Nevadadata$date, y =cumulative_cases))+geom_point()

NewHampshiredata<-filter(state_case_death, state_case_death$state=='New Hampshire')
NewHampshireplot<-ggplot(data=NewHampshiredata, aes(x=NewHampshiredata$date, y =cumulative_cases))+geom_point()

NewJerseydata<-filter(state_case_death, state_case_death$state=='New Jersey')
NewJerseyplot<-ggplot(data=NewJerseydata, aes(x=NewJerseydata$date, y =cumulative_cases))+geom_point()

NewMexicodata<-filter(state_case_death, state_case_death$state=='New Mexico')
NewMexicoplot<-ggplot(data=NewMexicodata, aes(x=NewMexicodata$date, y =cumulative_cases))+geom_point()

NewYorkdata<-filter(state_case_death, state_case_death$state=='New York')
ggplot(data=NewYorkdata, aes(x=NewYorkdata$date, y =cumulative_cases))+geom_point()+geom_vline(xintercept=as.Date("2020-05-25"),linetype=4)+geom_vline(xintercept=as.Date("2020-05-25"),linetype=4)


NorthCarolinadata<-filter(state_case_death, state_case_death$state=='North Carolina')
NorthCarolinaplot<-ggplot(data=NorthCarolinadata, aes(x=NorthCarolinadata$date, y =cumulative_cases))+geom_point()

NorthDakotadata<-filter(state_case_death, state_case_death$state=='North Dakota')
NorthDakotaplot<-ggplot(data=NorthDakotadata, aes(x=NorthDakotadata$date, y =cumulative_cases))+geom_point()

Ohiodata<-filter(state_case_death, state_case_death$state=='Ohio')
Ohioplot<-ggplot(data=Ohiodata, aes(x=Ohiodata$date, y =cumulative_cases))+geom_point()

Oklahomadata<-filter(state_case_death, state_case_death$state=='Oklahoma')
Oklahomaplot<-ggplot(data=Oklahomadata, aes(x=Oklahomadata$date, y =cumulative_cases))+geom_point()

Oregondata<-filter(state_case_death, state_case_death$state=='Oregon')
Oregonplot<-ggplot(data=Oregondata, aes(x=Oregondata$date, y =cumulative_cases))+geom_point()

Pennsylvaniadata<-filter(state_case_death, state_case_death$state=='Pennsylvania')
Pennsylvaniaplot<-ggplot(data=Pennsylvaniadata, aes(x=Pennsylvaniadata$date, y =cumulative_cases))+geom_point()

RhodeIslanddata<-filter(state_case_death, state_case_death$state=='Rhode Island')
RhodeIslandplot<-ggplot(data=RhodeIslanddata, aes(x=RhodeIslanddata$date, y =cumulative_cases))+geom_point()

SouthCarolinadata<-filter(state_case_death, state_case_death$state=='South Carolina')
SouthCarolinaplot<-ggplot(data=SouthCarolinadata, aes(x=SouthCarolinadata$date, y =cumulative_cases))+geom_point()

SouthDakotadata<-filter(state_case_death, state_case_death$state=='South Dakota')
SouthDakotaplot<-ggplot(data=SouthDakotadata, aes(x=SouthDakotadata$date, y =cumulative_cases))+geom_point()

Tennesseedata<-filter(state_case_death, state_case_death$state=='Tennessee')
Tennesseeplot<-ggplot(data=Tennesseedata, aes(x=Tennesseedata$date, y =cumulative_cases))+geom_point()

Texasdata<-filter(state_case_death, state_case_death$state=='Texas')
Texasplot<-ggplot(data=Texasdata, aes(x=Texasdata$date, y =cumulative_cases))+geom_point()

Utahdata<-filter(state_case_death, state_case_death$state=='Utah')
Utahplot<-ggplot(data=Utahdata, aes(x=Utahdata$date, y =cumulative_cases))+geom_point()

Vermontdata<-filter(state_case_death, state_case_death$state=='Vermont')
Vermontplot<-ggplot(data=Vermontdata, aes(x=Vermontdata$date, y =cumulative_cases))+geom_point()

Virginiadata<-filter(state_case_death, state_case_death$state=='Virginia')
Virginiaplot<-ggplot(data=Virginiadata, aes(x=Virginiadata$date, y =cumulative_cases))+geom_point()

Washingtondata<-filter(state_case_death, state_case_death$state=='Washington')
Washingtonplot<-ggplot(data=Washingtondata, aes(x=Washingtondata$date, y =cumulative_cases))+geom_point()

WestVirginiadata<-filter(state_case_death, state_case_death$state=='West Virginia')
WestVirginiaplot<-ggplot(data=WestVirginiadata, aes(x=WestVirginiadata$date, y =cumulative_cases))+geom_point()

Wisconsindata<-filter(state_case_death, state_case_death$state=='Wisconsin')
ggplot(data=Wisconsindata, aes(x=Wisconsindata$date, y =cumulative_cases))+geom_point()+geom_vline(xintercept=as.Date("2020-05-13"),linetype=4)+geom_vline(xintercept=as.Date("2020-05-27"),linetype=4)

Wyomingdata<-filter(state_case_death, state_case_death$state=='Wyoming')
Wyomingplot<-ggplot(data=Wyomingdata, aes(x=Wyomingdata$date, y =cumulative_cases))+geom_point()



