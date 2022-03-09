
CREATE TABLE ADMIN.PAGECONTENT
(
	 PAGEID BIGINT IDENTITY(1,1) PRIMARY KEY,
	 CATEGORYID BIGINT,
	 CATEGORYNAME NVARCHAR(100),
	 SUBCATEGORYID BIGINT,
	 SUBCATEGORYNAME NVARCHAR(100),
	 IMAGES NVARCHAR(500),
	 PAGECONTENT TEXT,
	 STATUS BIT DEFAULT(1)
)
select catid,title from dbo.[category] where catid='16' 
select [PAGEID] ,[CATEGORYID] ,[CATEGORYNAME] ,[SUBCATEGORYID],[SUBCATEGORYNAME],[IMAGES],[PAGECONTENT],[STATUS] 
from ADMIN.PAGECONTENT where [SUBCATEGORYID]='16' 


Update ADMIN.PAGECONTENT set CATEGORYID='15' [CATEGORYNAME]='About us'  [SUBCATEGORYID]='16'  [SUBCATEGORYNAME]='About School'  [PAGECONTENT]='<div class="row" style="box-sizing: border-box; margin-right: -15px; margin-left: -15px; color: rgb(119, 119, 119); font-family: lato, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">
	<div class="col-md-12" style="box-sizing: border-box; position: relative; min-height: 1px; padding-right: 15px; padding-left: 15px; float: left; width: 1170px;">
		<h2 class="section-title" style="box-sizing: border-box; font-family: inherit; line-height: 1.1; color: rgb(62, 62, 62); margin: 0px 0px 60px; font-size: 30px; text-transform: uppercase; display: inline-block; position: relative;">
			ABOUTs</h2>
	</div>
</div>
<div class="row" style="box-sizing: border-box; margin-right: -15px; margin-left: -15px; color: rgb(119, 119, 119); font-family: lato, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);">
	<div class="col-sm-12" style="box-sizing: border-box; position: relative; min-height: 1px; padding-right: 15px; padding-left: 15px; float: left; width: 1170px;">
		<div class="about-box-item" style="box-sizing: border-box;">
			<p style="box-sizing: border-box; margin: 0px 0px 15px; text-align: justify;">
				Seven Stars Academy Hehal ,Ranchi was founded in the year 2011. it is powered by Seven stars welfare trust and backed by wel qualified and trained faculties. The word seven stars bring a memories of seven sisters and two parents Late MahadevTigga and Late UdayTigga of a family who inspired to start this academy to groom the rural children. Mrs.SonamotiTigga,Mr. B.Beck,Mrs.seemaTigga,Dr.JagarnathOraon and Mr.MangaTiggaand more others are the founder members of this Institution. From a modest beginning, Seven Stars Academy enjoys a position of eminence among the city schools today. The school has strength of over 500 students and nearly 23 teaching staff and 6 non teaching staff members.</p>
		</div>
	</div>
</div>
'  [STATUS]='1'  [IMAGES]=''  where [PAGEID]='7'