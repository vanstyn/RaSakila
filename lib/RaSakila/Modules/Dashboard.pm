package RaSakila::Modules::Dashboard;
use strict;
use warnings;
use Moose;
extends 'RapidApp::AppHtml';

use RapidApp::Include qw(sugar perlutil);

use URI::Escape;
use Switch qw(switch);




sub html { <<'--END--',


<div style="position:absolute; left: 0px;right:20px;">

<div class="dashboard">


	<table style="width:100%;">
		<tbody><tr>
			<td valign="top">
				<div style="padding-bottom:15px;">
					

<table class="today-at-clippard" style="width:100%;"><tbody>
	<tr>
		<th class="title">This Week @ Clippard...</th>
	</tr>
	<tr>
		<td>
			<table style="width:100%;">
				<tbody><tr>
					<th>Birthdays</th>
					<th>Anniversaries</th>
				</tr>
				
					
						<tr>
							<td>
								09/24&nbsp;&nbsp;
									David C. Frye, Dept. 900
							&nbsp;</td>
							<td>
								09/29&nbsp;&nbsp;
									Scott C Lamb Celebrates 20 years
							&nbsp;</td>
						</tr>
					
						<tr>
							<td>
								09/24&nbsp;&nbsp;
									Ratri Reid, Dept. 550
							&nbsp;</td>
							<td>&nbsp;</td>
						</tr>
					
						<tr>
							<td>
								09/25&nbsp;&nbsp;
									Karen T. Law, Dept. 400
							&nbsp;</td>
							<td>&nbsp;</td>
						</tr>
					
						<tr>
							<td>
								09/28&nbsp;&nbsp;
									Laverne F. Nolte, Dept. 250
							&nbsp;</td>
							<td>&nbsp;</td>
						</tr>
					
						<tr>
							<td>
								09/29&nbsp;&nbsp;
									Regina R. Miles, Dept. 200
							&nbsp;</td>
							<td>&nbsp;</td>
						</tr>
					
						<tr>
							<td>
								09/29&nbsp;&nbsp;
									Nancy J. Bennett, Dept. 700
							&nbsp;</td>
							<td>&nbsp;</td>
						</tr>
					
				
			</tbody></table>
		</td>
	</tr>
	<tr>
		<th class="foot">
			We currently employee <b>207</b> people.  
			<b>62</b> in Fairfield, 
			<b>141</b> in Colerain, 
			and <b>4</b> in Belgium
		</th>
	</tr>
</tbody></table>

				</div>
				<div style="padding-bottom:15px;">
					

<table class="rsm_project_status" style="width:100%;">
	<tbody>
		<tr>
		<th colspan="5">RSM Custom Project Status</th></tr>
		
			<tr>
				<td>Bill Johnson</td>
				<td>&nbsp;–&nbsp;</td>
				<td>36 projects for a potential of $207,458.00</td>
				<td>&nbsp;–&nbsp;</td>
				<td>13 need updated!</td>
			</tr>
		
			<tr>
				<td>Dick Destaff</td>
				<td>&nbsp;–&nbsp;</td>
				<td>56 projects for a potential of $20,498.00</td>
				<td>&nbsp;–&nbsp;</td>
				<td>3 need updated!</td>
			</tr>
		
			<tr>
				<td>Larry</td>
				<td>&nbsp;–&nbsp;</td>
				<td>5 projects for a potential of $3,458.00</td>
				<td>&nbsp;–&nbsp;</td>
				<td>1 need updated!</td>
			</tr>
		
			<tr>
				<td>Tom Fooly</td>
				<td>&nbsp;–&nbsp;</td>
				<td>1025 projects for a potential of $27,458.90</td>
				<td>&nbsp;–&nbsp;</td>
				<td>85 need updated!</td>
			</tr>
		
			<tr>
				<td>Donald Duck</td>
				<td>&nbsp;–&nbsp;</td>
				<td>16 projects for a potential of $66,999.00</td>
				<td>&nbsp;–&nbsp;</td>
				<td>16 need updated!</td>
			</tr>
		
			<tr>
				<td>Rob Clippard</td>
				<td>&nbsp;–&nbsp;</td>
				<td>40 projects for a potential of $34,123.00</td>
				<td>&nbsp;–&nbsp;</td>
				<td>10 need updated!</td>
			</tr>
		
	</tbody>
</table>
				</div>
				<div style="padding-bottom:15px;">
					






<div style="padding-left:10px;padding-right:10px;">
	<table style="width:100%;">
		<tbody>
		<tr>
			<td colspan="7" style="width:100%;text-align:center;color:navy;font-size:1.3em;font-weight:bold;padding-bottom:10px;">
				Total Sales, % Change:
			</td>
		</tr>
		<tr>
				
			<td style="width:22%;">
				<table class="value_box" style="width:100%;"><tbody>
					<tr><th>
						Daily
					</th></tr>
					<tr><td>
						
	
		—
	

					</td></tr>
				</tbody></table>
			</td>
			
			<td width="15px:"><div style="min-width:10px;"></div></td>
			
			<td style="width:22%;">
				<table class="value_box" style="width:100%;"><tbody>
					<tr><th>
						Weekly
					</th></tr>
					<tr><td>
						
	
		<span style="color:limegreen;">26.35%</span>
	

					</td></tr>
				</tbody></table>
			</td>
			
			<td width="15px:"><div style="min-width:10px;"></div></td>
			
			<td style="width:22%;">
				<table class="value_box" style="width:100%;"><tbody>
					<tr><th>
						Monthly
					</th></tr>
					<tr><td>
						
	
		<span style="color:red;">-3.12%</span>
	

					</td></tr>
				</tbody></table>
			</td>
			
			<td width="15px:"><div style="min-width:10px;"></div></td>
			
			<td style="width:22%;">
				<table class="value_box" style="width:100%;"><tbody>
					<tr><th>
						Yearly
					</th></tr>
					<tr><td>
						
	
		<span style="color:red;">-1.74%</span>
	

					</td></tr>
				</tbody></table>
			</td>
				
		</tr></tbody>
	</table>
</div>

				</div>
			</td>
			<td width="10px:"><div style="width:5px;"></div></td>
			<td valign="top" width="300px;">
				

<table class="top_dists" style="width:100%;">
	<tbody>
		<tr><th colspan="3">Distributor Ranking Last 12M (Top 5)</th></tr>
		
			
			<tr>
				<td class="rank">1</td>
				<td class="cname">CLAYTON CONTROLS</td>
				<td class="tot">$1,623,906.01</td>
			</tr>
			
		
			
			<tr>
				<td class="rank">2</td>
				<td class="cname">GULF CONTROLS CORPORATION</td>
				<td class="tot">$1,403,842.10</td>
			</tr>
			
		
			
			<tr>
				<td class="rank">3</td>
				<td class="cname">MINUTEMAN CONTROLS COMPANY</td>
				<td class="tot">$988,247.36</td>
			</tr>
			
		
			
			<tr>
				<td class="rank">4</td>
				<td class="cname">AIR ENGINEERING &amp; SUPPLY CO.</td>
				<td class="tot">$931,827.73</td>
			</tr>
			
		
			
			<tr>
				<td class="rank">5</td>
				<td class="cname">ISAACS FLUID POWER EQUIP. CO.</td>
				<td class="tot">$918,156.38</td>
			</tr>
			
		
	</tbody>
</table>
				
				<div style="padding-top:7px;"></div>
				
				<div style="padding:3px;">
				
					

<div style="padding:5px;">

	<div class="ra-search-box-heading">Product Lookup:</div>
	<div class="ra-search-box">
		<form class="ra-search-form" action="#!/main/explorer/adm_navtree/hp3k_table_product_list" onsubmit="return Ext.ux.RapidApp.HashNav.formSubmitHandler.apply(this,arguments);">
		 <input class="ra-search-text" name="quick_search" type="text">
		 <button class="ra-search-button" type="submit"><span>Go</span></button>
		</form>
	</div>
	
</div>
					
					

<div style="padding:5px;">

	<div class="ra-search-box-heading">GreenSheet Lookup:</div>
	<div class="ra-search-box">
		<form class="ra-search-form" action="#!/view/73348" onsubmit="return Ext.ux.RapidApp.HashNav.formSubmitHandler.apply(this,arguments);">
		 <input class="ra-search-text" name="quick_search" type="text">
		 <button class="ra-search-button" type="submit"><span>Go</span></button>
		</form>
	</div>
	
</div>
					
					

<div style="padding:5px;">

	<div class="ra-search-box-heading">Order No. Lookup:</div>
	<div class="ra-search-box">
		<form class="ra-search-form" action="#!/view/72190?quick_search_cols=order_no" onsubmit="return Ext.ux.RapidApp.HashNav.formSubmitHandler.apply(this,arguments);">
		 <input class="ra-search-text" name="quick_search" type="text">
		 <button class="ra-search-button" type="submit"><span>Go</span></button>
		</form>
	</div>
	
</div>
					
					

<div style="padding:5px;">

	<div class="ra-search-box-heading">Invoice No. Lookup:</div>
	<div class="ra-search-box">
		<form class="ra-search-form" action="#!/view/72471?quick_search_cols=invoice_no" onsubmit="return Ext.ux.RapidApp.HashNav.formSubmitHandler.apply(this,arguments);">
		 <input class="ra-search-text" name="quick_search" type="text">
		 <button class="ra-search-button" type="submit"><span>Go</span></button>
		</form>
	</div>
	
</div>
					
				</div>
				
			</td>
		</tr></tbody>
	</table>
	
	<div style="padding-top:10px;"></div>
	
	<hr>
		
	
	<div style="padding-top:20px;padding-bottom:10px;">
		<img src="http://cilapp5:3000/saleschart/12month/all" style="max-width:100%">
	</div>

<!--
	
	<div style="padding-top:20px;padding-bottom:10px;">
		<table style="width:100%;"><tbody><tr>
			<td valign="top">
				<img src="http://chart.apis.google.com/chart?chtt=Product+Mix+by+Sales+(past+month)&amp;chs=400x400&amp;chds=a&amp;chd=t:461145.65,439578.48,301356.52,259705.51,183326.15,140943.20,64560.13,49710.97,11596.56,1009.35,70.06&amp;cht=p&amp;chdlp=bv&amp;chl=Cylinders|Unclassified|Direction%20Control%20Valves|Electronic%20Valves|Control%20Valves|Fittings%20%26%20Tubing|Modular%20Valves|Maximatic|Assemblies|Electrnic%20Components|Parts&amp;chma=130,130,0,0&amp;chts=333333,20&amp;chco=990066&amp;chdl=Cylinders ($461,145.65)|Unclassified ($439,578.48)|Direction%20Control%20Valves ($301,356.52)|Electronic%20Valves ($259,705.51)|Control%20Valves ($183,326.15)|Fittings%20%26%20Tubing ($140,943.20)|Modular%20Valves ($64,560.13)|Maximatic ($49,710.97)|Assemblies ($11,596.56)|Electrnic%20Components ($1,009.35)|Parts ($70.06)" style="max-width:100%">
			</td>
			<td valign="top">
				<img src="http://chart.apis.google.com/chart?chtt=Product+Mix+by+Sales+(past+year)&amp;chs=400x400&amp;chds=a&amp;chd=t:6054441.29,4494831.01,4358585.76,3443274.57,2358327.71,1860584.88,695576.11,651020.46,313682.01,11519.62,8741.51,967.92&amp;cht=p&amp;chdlp=bv&amp;chl=Unclassified|Direction%20Control%20Valves|Electronic%20Valves|Cylinders|Control%20Valves|Fittings%20%26%20Tubing|Maximatic|Modular%20Valves|Assemblies|Electrnic%20Components|%28not%20set%29|Parts&amp;chma=130,130,0,0&amp;chts=333333,20&amp;chco=9900C2&amp;chdl=Unclassified ($6,054,441.29)|Direction%20Control%20Valves ($4,494,831.01)|Electronic%20Valves ($4,358,585.76)|Cylinders ($3,443,274.57)|Control%20Valves ($2,358,327.71)|Fittings%20%26%20Tubing ($1,860,584.88)|Maximatic ($695,576.11)|Modular%20Valves ($651,020.46)|Assemblies ($313,682.01)|Electrnic%20Components ($11,519.62)|%28not%20set%29 ($8,741.51)|Parts ($967.92)" style="max-width:100%">
			</td>
		</tr></tbody></table>
	</div>
	
	<div style="padding-top:20px;padding-bottom:10px;">
		<table style="width:100%;"><tbody><tr>
			<td valign="top">
				<img src="http://chart.apis.google.com/chart?chtt=Pending+Sales+by+Engineer&amp;chs=400x400&amp;chds=a&amp;chd=t:686362.40,500712.10,273860.57,106949.87,49715.65,40016.63,38384.56,24438.00,1475.00,185.20&amp;cht=p&amp;chdlp=bv&amp;chma=130,130,0,0&amp;chl=Jerry%20K.%20Grotelueschen|Richard%20J%20Humason|Gary%20Hamersly|Matthew%20R.%20Hausfeld|Bradley%20R.%20Thompson|%28not%20set%29|Victoria%20Kinne|Ernie%20Doering|Dave%20McBreen|Douglas%20E.%20Robertson&amp;chts=333333,20&amp;chdl=Jerry%20K.%20Grotelueschen ($686,362.40)|Richard%20J%20Humason ($500,712.10)|Gary%20Hamersly ($273,860.57)|Matthew%20R.%20Hausfeld ($106,949.87)|Bradley%20R.%20Thompson ($49,715.65)|%28not%20set%29 ($40,016.63)|Victoria%20Kinne ($38,384.56)|Ernie%20Doering ($24,438.00)|Dave%20McBreen ($1,475.00)|Douglas%20E.%20Robertson ($185.20)" style="max-width:100%">
			</td>
			<td valign="top">
				&nbsp;
			</td>
		</tr></tbody></table>
	</div>
	
-->
	
</div>
</div>
--END--

}

sub html1 {
	my $self = shift;

	my $Employee = $self->c->model('ClassicDB::Employee')->search_rs({
		employeenumber => 1076
	})->first;
	
	#local $SIG{__DIE__} = sub { confess $_ };
	
	
	#my $c = $self->c;
	#
	#my $cache_val1;
	##my $cache1 = $c->cache( backend => '1min' );
	#my $cache1 = $c->get_cache_backend('1min');
	#unless ( $cache_val1 = $cache1->get( 'cache_val1' ) ) {
	#	$cache_val1 = '<pre>val1: ' . qx{date} . '</pre>';
	#	$cache1->set( 'cache_val1', $cache_val1 );
	#}
	#
	#my $cache_val2;
	#my $cache5 = $c->cache( backend => '5min' );
	#unless ( $cache_val2 = $cache5->get( 'cache_val2' ) ) {
	#	$cache_val2 = '<pre>val2: ' . qx{date} . '</pre>';
	#	$cache5->set( 'cache_val2', $cache_val2 );
	#}
	
	my $GenCache = $self->c->controller('GenCache');
	
	$GenCache->compute_all if ($self->c->req->params->{clear});
	
	
	my $test_link = $Employee->displayWithLink;
	
	
	my $chart = $self->sales_chart_12_month;
	
	#scream($chart);
	
	
	return $self->c->template_render('templates/dash.tt',{
		foo => 'blah',
		c => $self->c,
		test_link => $test_link,
		apple => $GenCache->get('apple'),
		orange => $GenCache->get('orange'),
		sales_chart_12_month => $chart
		#cache_val1 => $cache_val1,
		#cache_val2 => $cache_val2,
	});
}



my %category_color = (
	'Unclassified'						=> 'E0E0E0',	# light gray
	'Cylinders'							=> '008000',	# forest green
	'Control Valves'					=> 'FF0000',	# red
	'Electronic Valves'				=> 'FFFF00',	# yellow
	'Modular Valves'					=> '3072F3',	# light blue
	'Fittings & Tubing'				=> 'FF9900',	# orange
	#'Direction Control Valves'		=> 'AA0033',	# maroon
	'Direction Control Valves'		=> 'CC0000',	# darker red
	'Assemblies'						=> 'FF69B4',	# hot pink
	'Maximatic'							=> 'E6E600',	# darker yellow
);

my @other_colors = (
	#'FF0000',	# red
	#'3072F3',	# light blue
	'00FF00',	# lime green
	#'E0E0E0',	# light gray
	'0000FF',	# blue
	'AA0033',	# maroon
	'BBCCED',	# blue/silver
	#'008000',	# forest green
	'EFEFEF',	# lighter gray
	'7777CC',	# blueish purple
	'FFCC33',	# light orange
	#'FF9900',	# orange
	'990066',	# purple
	#'FFFF00',	# yellow
);

my @color_list = (

	'FF0000',	# red
	'3072F3',	# light blue
	'00FF00',	# lime green
	'E0E0E0',	# light gray
	'0000FF',	# blue
	'AA0033',	# maroon
	'BBCCED',	# blue/silver
	'008000',	# forest green
	'EFEFEF',	# lighter gray
	'7777CC',	# blueish purple
	'FFCC33',	# light orange
	'FF9900',	# orange
	'990066',	# purple
	'FFFF00',	# yellow
);




sub sales_chart_12_month {
	my $self = shift;
	my $c = $self->c;
	
	my $dt = DateTime->now( time_zone => 'local' )->set_day(1);
	#my $dbh = $c->model('HP3K')->storage->dbh;
	
	my @sets = ();
	my @month_hashes = ();
	my @month_names = ();
	my %running_totals = ();
	
	my $months = 12;
	#foreach my $i (1..$months) {
	#	my $high = $dt->ymd;
	#	$dt = $dt->subtract( months => 1 );
	#	my $low = $dt->ymd;
	#	
	#	
	#	my $sql = q{
	#SELECT ROUND(SUM(`me`.`price_2_total`)/1000) AS tot, `category`.`name` AS category
	#  FROM `INVOICE_DETAIL` `me` 
	#  LEFT JOIN `PROD_MAST` `prod_no` 
	#	 ON `prod_no`.`prod_no` = `me`.`prod_no` 
	#  LEFT JOIN `product_list` `product_list` 
	#	 ON `product_list`.`prod_no` = `prod_no`.`prod_no` 
	#  LEFT JOIN `product_family` `family` 
	#	 ON `family`.`code` = `product_list`.`pc1` 
	#  LEFT JOIN `product_category` `category` 
	#	 ON `category`.`id` = `family`.`category_id` 
	#  LEFT JOIN `AR_HEADER` `ar_header` 
	#	 ON `ar_header`.`invoice_no` = `me`.`invoice_no` 
	#  LEFT JOIN `date_link` `date_invoiced` 
	#	 ON `date_invoiced`.`hp_image_date` = `ar_header`.`date_invoiced` 
	#WHERE `date_invoiced`.`date` >= '} . $low . q{' AND `date_invoiced`.`date` < '} . $high . q{'
	#GROUP BY category
	#HAVING tot > 0
	#ORDER BY tot DESC
	#};
	#			
	#	my $rows = $dbh->selectall_arrayref($sql,{ Slice => {} });
	#	my %d = map { ($_->{category} || '(not set)') => $_->{tot} } @$rows;
	#	
	#	$running_totals{$_} += $d{$_} for (keys %d);
	#	push @month_hashes, \%d;
	#	push @month_names, $dt->month_abbr . '-' . $dt->strftime('%y')
	#}
	
	#scream({
	#	running_totals => \%running_totals,
	#	month_hashes => \@month_hashes,
	#	month_names => \@month_names
	#});


	my $td = &test_data;
	@month_hashes = @{$td->{month_hashes}};
	@month_names = @{$td->{month_names}};
	%running_totals = %{$td->{running_totals}};
	
	
	my @cat_order = sort { $running_totals{$a} <=> $running_totals{$b} } keys %running_totals;
	
	foreach my $month_d (@month_hashes) {
		my $total = 0;
		my $ci = 0;
		my $month_name = shift @month_names;
		foreach my $category (@cat_order) {
			$total += $month_d->{$category} if ($month_d->{$category});
			unshift @{$sets[$ci++]}, {
				value => $total,
				label => $month_name
			};
		}
	}
	
	
	
	my @o_colors = @other_colors;
	
	my @c_order = map { $category_color{$_} || shift @o_colors } @cat_order;
	
	scream(\@cat_order,\@c_order, [ map { $category_color{$_} } @cat_order ]);
	
	
	#return {
	#	chart_url => generate_chart_uri(&test_chart_opt),
	#	sets => \@sets
	#};
	
	
	
	
	
	
	return {
		chart_url => get_chart_uri(\@sets,{
				chco	=> join(',',@c_order),
				chm	=> &chm_line_fills(@c_order),
				chdl => join('|',map { uri_escape($_) } @cat_order),
				chs	=> '800x350',				# size -- # WARNING: max size 300000 pixels! 800x350 = 280000
			},
			{ 
				title => 'Last ' . $months . ' Months Sales by Category ($1000s, stacked)',
				chart_profile => 'line',
				add_base_line => 1
			}
		),
		sets => \@sets
	};
}



sub test_chart_opt {(
	'chtt' => 'Last+12+Months+Sales+by+Category+($1000s,+stacked)',
	#'chls' => '2,4,0|1',
	'chls' => '0' . ('|0' x 20),
	'chds' => 'a',
	'chs' => '800x350',
	'chd' => 't:0,0|21.00,39.00,37.00,47.00,36.00,19.00,12.00,6.00,27.00,41.00,27.00,16.00|71.00,89.00,113.00,98.00,85.00,60.00,52.00,44.00,80.00,120.00,87.00,74.00|124.00,132.00,177.00,141.00,164.00,120.00,118.00,102.00,136.00,169.00,144.00,146.00|282.00,282.00,328.00,285.00,330.00,290.00,301.00,240.00,284.00,323.00,305.00,309.00|479.00,484.00,507.00,471.00,531.00,546.00,526.00,413.00,454.00,522.00,481.00,520.00|741.00,676.00,715.00,731.00,826.00,891.00,824.00,709.00,738.00,815.00,704.00,864.00|1018.00,1081.00,1015.00,1032.00,1286.00,1260.00,1182.00,1145.00,1070.00,1221.00,1015.00,1308.00|1437.00,1452.00,1400.00,1412.00,1701.00,1604.00,1604.00,1533.00,1454.00,1590.00,1347.00,1700.00|1957.00,1874.00,1900.00,1971.00,2300.00,2157.00,2200.00,1978.00,1930.00,2026.00,1883.00,2151.00',
	'cht' => 'lc',
	#'chm' => 'b,FF69B4,0,1,0|b,3072F3,1,2,0|b,E6E600,2,3,0|b,FF9900,3,4,0|b,FF0000,4,5,0|b,008000,5,6,0|b,FFFF00,6,7,0|b,CC0000,7,8,0|b,E0E0E0,8,9,0',
	'chm' => 'b,FF69B4,0,1,0|b,3072F3,1,2,0|b,E6E600,2,3,0|b,FF9900,3,4,0|b,FF0000,4,5,0|b,008000,5,6,0|b,FFFF00,6,7,0|b,CC0000,7,8,0|b,E0E0E0,8,9,0',
	'chg' => '0,-1,1,1',
	'chdlp' => 'r|r',
	'chxt' => 'y,x',
	'chma' => '0,0,0,0',
	'chl' => 'Sep-11|Oct-11|Nov-11|Dec-11|Jan-12|Feb-12|Mar-12|Apr-12|May-12|Jun-12|Jul-12|Aug-12',
	'chco' => 'FF69B4,3072F3,E6E600,FF9900,FF0000,008000,FFFF00,CC0000,E0E0E0',
	#'chco' => 'E0E0E0,3072F3,E6E600,FF9900,FF0000,008000,FFFF00,CC0000,E0E0E0',
	'chts' => '333333,20',
	'chdl' => 'Assemblies|Modular%20Valves|Maximatic|Fittings%20%26%20Tubing|Control%20Valves|Cylinders|Electronic%20Valves|Direction%20Control%20Valves|Unclassified'
)}



sub test_data {{

          'month_hashes' => [
                              {
                                '(not set)' => 4,
                                'Modular Valves' => 58,
                                'Electronic Valves' => 444,
                                'Unclassified' => 451,
                                'Cylinders' => 344,
                                'Direction Control Valves' => 392,
                                'Assemblies' => 16,
                                'Maximatic' => 72,
                                'Fittings & Tubing' => 163,
                                'Control Valves' => 211
                              },
                              {
                                'Modular Valves' => 60,
                                'Electronic Valves' => 311,
                                'Unclassified' => 536,
                                'Cylinders' => 223,
                                'Direction Control Valves' => 332,
                                'Assemblies' => 27,
                                'Maximatic' => 57,
                                'Electrnic Components' => 2,
                                'Fittings & Tubing' => 161,
                                'Control Valves' => 176
                              },
                              {
                                'Assemblies' => 41,
                                'Modular Valves' => 79,
                                'Maximatic' => 49,
                                'Electronic Valves' => 406,
                                'Fittings & Tubing' => 154,
                                'Unclassified' => 436,
                                'Control Valves' => 199,
                                'Cylinders' => 293,
                                'Direction Control Valves' => 369
                              },
                              {
                                'Assemblies' => 27,
                                'Modular Valves' => 53,
                                'Maximatic' => 56,
                                'Electronic Valves' => 332,
                                'Fittings & Tubing' => 148,
                                'Unclassified' => 476,
                                'Control Valves' => 170,
                                'Cylinders' => 284,
                                'Direction Control Valves' => 384
                              },
                              {
                                '(not set)' => 6,
                                'Modular Valves' => 38,
                                'Electronic Valves' => 436,
                                'Unclassified' => 445,
                                'Cylinders' => 296,
                                'Direction Control Valves' => 388,
                                'Assemblies' => 6,
                                'Electrnic Components' => 1,
                                'Maximatic' => 58,
                                'Fittings & Tubing' => 138,
                                'Control Valves' => 173
                              },
                              {
                                'Modular Valves' => 40,
                                'Electronic Valves' => 358,
                                'Unclassified' => 596,
                                'Cylinders' => 298,
                                'Direction Control Valves' => 422,
                                'Assemblies' => 12,
                                'Maximatic' => 66,
                                'Electrnic Components' => 1,
                                'Fittings & Tubing' => 183,
                                'Control Valves' => 225
                              },
                              {
                                'Assemblies' => 19,
                                'Modular Valves' => 41,
                                'Maximatic' => 60,
                                'Electronic Valves' => 369,
                                'Fittings & Tubing' => 170,
                                'Unclassified' => 553,
                                'Control Valves' => 256,
                                'Direction Control Valves' => 344,
                                'Cylinders' => 345
                              },
                              {
                                'Assemblies' => 36,
                                'Modular Valves' => 49,
                                'Maximatic' => 79,
                                'Electronic Valves' => 460,
                                'Fittings & Tubing' => 166,
                                'Unclassified' => 599,
                                'Control Valves' => 201,
                                'Cylinders' => 295,
                                'Direction Control Valves' => 415
                              },
                              {
                                'Assemblies' => 47,
                                'Modular Valves' => 51,
                                'Maximatic' => 43,
                                'Electronic Valves' => 301,
                                'Fittings & Tubing' => 144,
                                'Unclassified' => 559,
                                'Control Valves' => 186,
                                'Cylinders' => 260,
                                'Direction Control Valves' => 380
                              },
                              {
                                'Modular Valves' => 76,
                                'Electronic Valves' => 300,
                                'Unclassified' => 500,
                                'Cylinders' => 208,
                                'Direction Control Valves' => 385,
                                'Assemblies' => 37,
                                'Maximatic' => 64,
                                'Electrnic Components' => 3,
                                'Fittings & Tubing' => 151,
                                'Control Valves' => 179
                              },
                              {
                                'Modular Valves' => 50,
                                'Electronic Valves' => 405,
                                'Unclassified' => 422,
                                'Cylinders' => 192,
                                'Direction Control Valves' => 371,
                                'Assemblies' => 39,
                                'Maximatic' => 43,
                                'Electrnic Components' => 2,
                                'Fittings & Tubing' => 150,
                                'Control Valves' => 202
                              },
                              {
                                'Modular Valves' => 50,
                                'Electronic Valves' => 277,
                                'Unclassified' => 520,
                                'Cylinders' => 262,
                                'Direction Control Valves' => 419,
                                'Assemblies' => 21,
                                'Maximatic' => 53,
                                'Electrnic Components' => 1,
                                'Fittings & Tubing' => 158,
                                'Control Valves' => 197
                              }
                            ],
          'month_names' => [
                             'Aug-12',
                             'Jul-12',
                             'Jun-12',
                             'May-12',
                             'Apr-12',
                             'Mar-12',
                             'Feb-12',
                             'Jan-12',
                             'Dec-11',
                             'Nov-11',
                             'Oct-11',
                             'Sep-11'
                           ],
          'running_totals' => {
                                '(not set)' => 10,
                                'Modular Valves' => 645,
                                'Electronic Valves' => 4399,
                                'Unclassified' => 6093,
                                'Direction Control Valves' => 4601,
                                'Cylinders' => 3300,
                                'Assemblies' => 328,
                                'Electrnic Components' => 10,
                                'Maximatic' => 700,
                                'Fittings & Tubing' => 1886,
                                'Control Valves' => 2375
                              }
        };
}




#################################
#################################







# random shuffle:
#@color_list = sort {int(rand(3))-1} @color_list;


sub chm_line_fills {
	my @colors = @_;
	my $i = 0;
	# example: 'b,76A4FB,0,1,0|b,224499,1,2,0|b,FF0000,2,3,0'
	my @chm = map { 'b,' . $_ . ',' . $i++ . ',' . $i . ',0' } @colors;
	return join('|',@chm);
}

my %chart_profiles = (

	pie => {
		chs	=> '400x400',				# size
		chma	=> '130,130,0,0',			# margins (left,right,top,bottom)
		cht	=> 'p',						# type (p = "pie")
		chds	=> 'a',						# Scaling (a = automatic)
		chdlp	=> 'bv',						# Chart legend location (r = right [vertical], bv = bottom vertical)
	},
	
	line => {
		chs	=> '600x250',				# size
		chma	=> '0,0,0,0',				# margins (left,right,top,bottom)
		cht	=> 'lc',						# type (lc = "line chart")
		chco	=> join(',',@color_list),
		chm	=> &chm_line_fills(@color_list),
		#chco	=> '3D7930,FF0000,FF9900',		# green line, red line, orange line
		chds	=> 'a',						# Scaling (a = automatic)
		chxt	=> 'y,x',					# Turn on x/y
		chg	=> '0,-1,1,1',				# grid lines
		#chls	=> '2,4,0|1',				# line styles
		chls 	=> '0' . ('|0' x 20),	# <-- make first 21 lines 0px - needed for stacked/area
		chdlp	=> 'r|r',						# Chart legend location (r = right, r = reverse)
		
		#chm	=> 'B,C5D4B5BB,0,0,0',	# line fill
		#chm	=> 'b,76A4FB,0,1,0|b,224499,1,2,0|b,FF0000,2,3,0',	# line fill
	}
	
);



sub get_chart_uri {
	my $set = shift;
	my $opt = shift || {};
	my $extra = shift || {};
	
	my $url_base = 'http://chart.apis.google.com/chart?';
	
	die "Set (first arg) must be an ArrayRef" unless (ref($set) eq 'ARRAY');
	die "Opt (second arg) must be a HashRef (or undef)" unless (ref($opt) eq 'HASH');
	die "Extra opt (third arg) must be a HashRef (or undef)" unless (ref($extra) eq 'HASH');
	
	return &get_chart_uri_multi_set($set,$opt,$extra) if (ref($set->[0]) eq 'ARRAY');
	
	# default profile 'pie'
	my $profile = $extra->{chart_profile} || 'pie';
	my $defaults = $chart_profiles{$profile} || {};
	
	if($extra->{title}) {
		my $str = $extra->{title};
		$str =~ s/\s+/\+/g;
		$defaults->{chtt} = $str;
		$defaults->{chts} = '333333,20'; # rgb color, font size
	}
	
	%$opt = ( %$defaults, %$opt );
	
	# --vv-- Sanitize data set: (TODO: apply rules according to settings in optional $extra HashRef)
	foreach my $itm (@$set) {
		$itm->{label} = '(not set)' if(!$itm->{label} or $itm->{label} eq '');
		$itm->{label} = uri_escape($itm->{label});
		$itm->{value} = sprintf('%.2f',$itm->{value});
		$itm->{value_label} = $itm->{label} . ' ($' . commify($itm->{value}) . ')';
	}
	# --^^--
	
	
	##################################
	##################################
	# --- Chart data ---
	$opt->{chd} = 't:' . ( join(',',map { $_->{value} } @$set) );
	
	# --- Chart label ---
	$opt->{chl} = join('|',map { $_->{label} } @$set);
	
	
	
	

	
	switch($profile) {
	
		case 'pie' {
	
			# --- Chart legend ---
			$opt->{chdl} = join('|',map { $_->{value_label} } @$set);
			
		}
		
	}
	##################################
	##################################
	
	return &generate_chart_uri(%$opt);
}


sub get_chart_uri_multi_set {
	my $sets = shift;
	my $opt = shift || {};
	my $extra = shift || {};
	
	my $url_base = 'http://chart.apis.google.com/chart?';
	
	die "Set (first arg) must be an ArrayRef" unless (ref($sets) eq 'ARRAY');
	die "Opt (second arg) must be a HashRef (or undef)" unless (ref($opt) eq 'HASH');
	die "Extra opt (third arg) must be a HashRef (or undef)" unless (ref($extra) eq 'HASH');
	
	# default profile 'pie'
	my $profile = $extra->{chart_profile} || 'pie';
	my $defaults = $chart_profiles{$profile} || {};
	
	if($extra->{title}) {
		my $str = $extra->{title};
		$str =~ s/\s+/\+/g;
		$defaults->{chtt} = $str;
		$defaults->{chts} = '333333,20'; # rgb color, font size
	}
	
	%$opt = ( %$defaults, %$opt );
	
#	scream_color(RED,$sets);
	
	foreach my $set (@$sets) {
		# --vv-- Sanitize data set: (TODO: apply rules according to settings in optional $extra HashRef)
		my @colors = (@other_colors,@color_list);
		foreach my $itm (@$set) {
			$itm->{label} = '(not set)' if(!$itm->{label} or $itm->{label} eq '');
			$itm->{label} = uri_escape($itm->{label});
			$itm->{value} = sprintf('%.2f',$itm->{value});
			$itm->{value_label} = $itm->{label} . ' ($' . commify($itm->{value}) . ')';
			
			#$itm->{color} ||= shift @colors;
		}
		# --^^--
	}
	
	
	##################################
	##################################
	# --- Chart data ---
	my @chd = ();
	foreach my $set (@$sets) {
		push @chd, join(',',map { $_->{value} } @$set);
	}
	unshift @chd, '0,0' if ($extra->{add_base_line});
	$opt->{chd} = 't:' . join('|',@chd);
	
	
	#$opt->{chd} = 't:' . ( join(',',map { $_->{value} } @$set) );
	
	# --- Chart label ---
	$opt->{chl} = join('|',map { $_->{label} } @{$sets->[0]});
	
	
	## --- Chart colors ---
	#$opt->{chco} = join(',',map { $_->{color} } @$set);
	#$opt->{chm} = &chm_line_fills(join(',',map { $_->{color} } @$set));
	
	
	## --- Chart colors ---
	#my @c_list = map { $_->{color} } @{$sets->[0]};
	#$opt->{chco} = join(',',@c_list);
	#$opt->{chm} = &chm_line_fills(@c_list);
	
	
	switch($profile) {
	
		case 'pie' {
	
			# --- Chart legend ---
			$opt->{chdl} = join('|',map { $_->{value_label} } @{$sets->[0]});
			
		}
		
	}
	##################################
	##################################
	
	
	
	
	return &generate_chart_uri(%$opt);
	
}


sub generate_chart_uri {
	my %opt = @_;
	
	scream_color(GREEN,\%opt);
	
	my $url_base = 'http://chart.apis.google.com/chart?';
	my @list = map { $_ . '=' . $opt{$_} } keys %opt;
	return $url_base . join('&',@list);
}




sub commify {
(my $num = shift) =~ s/\G(\d{1,3})(?=(?:\d\d\d)+(?:\.|$))/$1,/g;
return $num;
}




1;


