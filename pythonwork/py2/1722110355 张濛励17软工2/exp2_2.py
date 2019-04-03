x=input('input a day(format is 20xx-xx-xx):')
str ={'year':0, 'month':0, 'day':0}
dayinmonth=[31,28,31,30,31,30,31,31,30,31,30,31]
str['year'] , str['month'], str['day']=x.split('-')
str['year']=int(str['year'])
str['month']=int(str['month'])
str['day']=int(str['day'])
if str['year']/400==0:
    dayinmonth[1]=29
elif str['year']/4==0 and str['year']/100!=0:
    dayinmonth[1]=29
day=0
for n in range(str['month']-1):
    day+=dayinmonth[n]
day+=str['day']
print(day)