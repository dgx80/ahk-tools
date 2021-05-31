<!doctype html>
<html>
<head>
    <title>ProgiSync</title>
    <meta http-equiv="Content-type" content="text/html; charset=utf-8" />

    <link rel="stylesheet" href="http://test.localhost/progisync/insurer/pub/shared/bootstrap/bootstrap.min.css"/>
    <link rel="stylesheet" href="http://test.localhost/progisync/insurer/pub/shared/style/psy.shared.css?v=20140724" />

    <link rel="stylesheet" href="http://test.localhost/progisync/insurer/pub/style/insurer.css?v=20140724" />


    <link rel="stylesheet" href="http://test.localhost/progisync/insurer/pub/style/locator.css?v=20140724" />
    <link rel="stylesheet" href="http://test.localhost/progisync/insurer/pub/shared/jquery/excite-bike/jquery-ui-1.10.1.custom.css"/>

        <script src="http://test.localhost/progisync/insurer/pub/shared/jquery/jquery-1.9.1.min.js"></script>
    <script src="http://test.localhost/progisync/insurer/pub/shared/jquery/jquery-ui-1.10.1.custom.js"></script>
    <script src="http://test.localhost/progisync/insurer/pub/shared/jquery/jquery.scrollTo-1.4.3.1.js"></script>
    <script src="http://test.localhost/progisync/insurer/pub/shared/bootstrap/bootstrap.js"></script>
    <script src="http://test.localhost/progisync/insurer/pub/shared/js/psy.js"></script>
    <script src="http://test.localhost/progisync/insurer/pub/shared/js/psy.ajaxError403.js"></script>
    <script src="http://test.localhost/progisync/insurer/pub/shared/js/psy.utils.js"></script>
    <script src="http://test.localhost/progisync/insurer/pub/shared/js/psy.timeslot_reservation.js"></script>
    <script src="http://test.localhost/progisync/insurer/pub/shared/js/form.js"></script>
    <script src="http://test.localhost/progisync/insurer/pub/shared/js/jquery.datatable.min.js"></script>
    <script src="http://test.localhost/progisync/insurer/pub/shared/js/spin.min.js"></script>

    <script src="http://test.localhost/progisync/insurer/pub/js/psy.locator.js"></script>

</head>
<body>
<div id="spinner-center" style="position: fixed; top:50%; left:50%; z-index: 10"></div>
    <div class="container">
        <div id="current_user_block">
            Hi jeepy (<a href="http://test.localhost/progisync/insurer/pub/pages/logout">Logout</a>)
            <br>
            Promutuel of fjord        </div>

        <h1>

                            <img src="http://test.localhost/progisync/insurer/pub/commons/media/progisync_h36.png">
				<img src="http://test.localhost/progisync/insurer/pub/medias/insurance-company.gif">
                    </h1>
    </div>

    
<div class="navbar progisync">
    <div class="navbar-inner">
        <div class="container">
        <ul class="nav">

                        <li class="">
                <a href="http://test.localhost/progisync/insurer/pub/">Home</a>            </li>
                         
            <li class="selected">
                <a href="http://test.localhost/progisync/insurer/pub/claims">Claims</a>            </li>            
                        <li class="">
                <a href="http://test.localhost/progisync/insurer/pub/locator?type=auto">Locate auto supplier</a>            </li>
             
            <li class="">
                <a href="http://test.localhost/progisync/insurer/pub/emergency_stats">Emergency suppliers</a>            </li>
                         
            <li class="">
                <a href="http://test.localhost/progisync/insurer/pub/pages/management_links">Administration</a>            </li>            
            

            <li>
                
<li class="dropdown" style="display: none">
    <a href="http://test.localhost/progisync/insurer/pub/repair/mockups">Repair (dev)</a>
</li>

<li class="dropdown">

    <a href="http://test.localhost/progisync/insurer/pub/dev/shared?page=index" class="dropdown-toggle" data-toggle="dropdown">
        Dev
        <b class="caret"></b>
    </a>
    <ul class="dropdown-menu">

        <li class="dropdown-submenu">
            <a href="#">Documentation</a>
            <ul class="dropdown-menu">

                <li>
                    <a href="http://test.localhost/progisync/insurer/pub/dev/shared?page=doc_tables">Tables and views</a>                </li>
                <li>
                    <a href="http://test.localhost/progisync/insurer/pub/dev/shared?page=doc_repair_delay">Repair delay</a>
                </li>
                <li>
                    <a href="http://test.localhost/progisync/insurer/pub/dev/shared?page=crons">CRON jobs</a>                </li>
                <li>
                    <a href="http://test.localhost/progisync/insurer/pub/dev/shared?page=doc_client_satisfaction">Système de satisfaction client</a>                </li>
                <li>
                    <a href="http://test.localhost/progisync/insurer/pub/dev/shared?page=doc_vehicle_types">Types de véhicules</a>                </li>
                <li>
                    <a href="http://test.localhost/progisync/insurer/pub/dev/shared?page=licence_agreement_process">Processus de contrat de licence</a>                </li>
                <li>
                    <a href="http://test.localhost/progisync/insurer/pub/dev/shared?page=callbacks">Mécanique de callbacks</a>                </li>
                <li>
                    <a href="http://test.localhost/progisync/insurer/pub/api-doc/index.html">API</a>                </li>

            </ul>
        </li>

        <li class="dropdown-submenu">
            <a href="#">Procédures</a>
            <ul class="dropdown-menu">
                <li>
                    <a href="http://test.localhost/progisync/insurer/pub/dev/shared?page=doc_procedure_password">Générer un mot de passe sup/ins user</a>                </li>
                <li>
                    <a href="http://test.localhost/progisync/insurer/pub/dev/shared?page=doc_procedure_new_cat">Créer des centres d'urgence pour Intact</a>                </li>

            </ul>

        </li>

        <li>
            <a href="http://test.localhost/progisync/insurer/pub/dev/shared?page=alerts">Alerts</a>        </li>
        <li>
            <a href="http://test.localhost/progisync/insurer/pub/dev/shared?page=form">Form example</a>        </li>

        <li class="dropdown-submenu">
            <a href=#>
                Libraries
            </a>
            <ul class="dropdown-menu">
                <li>
                    <a href="http://test.localhost/progisync/insurer/pub/dev/shared?page=dateformats">Date formats</a>                </li>
                <li>
                    <a href="http://test.localhost/progisync/insurer/pub/dev/shared?page=datetimezones">Date Time Zones</a>                </li>
                <li>
                    <a href="http://test.localhost/progisync/insurer/pub/dev/shared?page=certify">Certify (validate access)</a>                </li>
                <li>
                    <a href="http://test.localhost/progisync/insurer/pub/dev/shared?page=syslog">SysLog</a>                </li>
                <li>
                    <a href="http://test.localhost/progisync/insurer/pub/dev/shared?page=exceldoc">Excel</a>                </li>
                <li>
                    <a href="http://test.localhost/progisync/insurer/pub/dev/shared?page=distancematrix">Google Distance Matrix</a>                </li>
                <li>
                    <a href="http://test.localhost/progisync/insurer/pub/dev/shared?page=mq_callback">Système de callbacks</a>                </li>
            </ul>
        </li>

        <li>
            <a href="http://test.localhost/progisync/insurer/pub/dev/shared?page=emails">Emails</a>        </li>

        <li>
            <a href="http://test.localhost/progisync/insurer/pub/dev/shared?page=branch_logos">Logos assurerus</a>        </li>

        <li class="dropdown-submenu">
            <a href="#">Outils</a>
            <ul class="dropdown-menu">
                <li>
                    <a href="http://test.localhost/progisync/insurer/pub/dev/shared?page=password_generator">Générateur de mot de passe</a>                </li>
                <li>
                    <a href="http://test.localhost/progisync/insurer/pub/dev/shared?page=licence_agreement">Conversion des formats de contrat de licence</a>                </li>
            </ul>
        </li>

        <li class="dropdown-submenu">
            <a href="#">Tests</a>
            <ul class="dropdown-menu">
                <li>
                    <a href="http://test.localhost/progisync/insurer/pub/dev/shared?page=test_error_proc">Tester la procédure d'erreur</a>                </li>
                <li>
                    <a href="http://test.localhost/progisync/insurer/pub/dev/shared?page=test_booking_widget">Tester le booking widget</a>                </li>
                <li>
                    <a href="http://test.localhost/progisync/insurer/pub/dev/shared?page=test_widget_locator">Tester le widget locator</a>                </li>
            </ul>
        </li>

        <li class="dropdown-submenu">
           <a href="#">Code</a>
            <ul class="dropdown-menu">
                <li>
                    <a href="http://test.localhost/progisync/insurer/pub/dev/shared?page=code_objects">Les types d'objets</a>                </li>
            </ul>
        </li>

    </ul>
</li>


            </li>
            <li id='helplink'>
                <a target="_blank" class='help' href='http://help.progi.com/connect_progisync'>Help</a>
            </li>

        </ul>
        </div>
    </div>
</div>
    <div class="container">
        
<div class="warnings">
    
    
            <div class='alert alert-success'>
            All of your selected appointments have been reassigned.        </div>
    </div>        <h2>My current claims</h2>


<div id="claim_search">
    

<form method='GET'
      action='http://test.localhost/progisync/insurer/pub/'
            id="search_form"        
    class=' form-horizontal ' >

    
    



    <ul class="option-container">
        <li>
            Suppliers        </li>
                <li>
            <label>
                <input checked='checked' type="checkbox" name="networks[]" id="networks_105"
                       value="105" />Rely            </label>
        </li>
                <li style="border-top: 1px solid #AAAAAA; border-radius: 0px">
            &nbsp;
        </li>
        <li>
            <label>
                <input type="checkbox" name="fl_emergency" id="fl_emergency" value="1" 
                        />
                Emergency Centre Only            </label>
        </li>
    </ul>


    <ul class="option-container">
        <li>
            Status        </li>
        <li>
            <label>
                <input type="checkbox" name="fl_estim_nodate" id="fl_estim_nodate" value="1"
                       checked='checked' />
                Unscheduled                <img src="http://test.localhost/progisync/insurer/pub/shared/medias/i_icon.png"
    id="info_bubble_c2a58db8b46ccab0d043e74164407627" class="info-bubble-icon"
            style="cursor:pointer"
    
    rel="popover"
    data-html="true"
    data-trigger="click"
    data-placement="right"
    data-title=""
    data-content="Show appointments that are not scheduled by the supplier."
    />
<script>
    $('document').ready(function() {
        $('#info_bubble_c2a58db8b46ccab0d043e74164407627').popover();
    });
</script>            </label>
        </li>
        <li>
            <label>
                <input type="checkbox" name="fl_estim_pending_upcoming" id="fl_estim_pending_upcoming" value="1"
                       checked='checked' />
                Upcoming                <img src="http://test.localhost/progisync/insurer/pub/shared/medias/i_icon.png"
    id="info_bubble_5edd7a7c6dc18a9daec4e9f57d516d87" class="info-bubble-icon"
            style="cursor:pointer"
    
    rel="popover"
    data-html="true"
    data-trigger="click"
    data-placement="right"
    data-title=""
    data-content="Show appointments that are scheduled but haven't occurred yet."
    />
<script>
    $('document').ready(function() {
        $('#info_bubble_5edd7a7c6dc18a9daec4e9f57d516d87').popover();
    });
</script>            </label>
        </li>
        <li>
            <label>
                <input type="checkbox" name="fl_estim_pending_passed" id="fl_estim_pending_passed" value="1" 
                       checked='checked' />
                Pending                <img src="http://test.localhost/progisync/insurer/pub/shared/medias/i_icon.png"
    id="info_bubble_306be5c84f4338ff865ca4793fb328f3" class="info-bubble-icon"
            style="cursor:pointer"
    
    rel="popover"
    data-html="true"
    data-trigger="click"
    data-placement="right"
    data-title=""
    data-content="Show appointments that occurred and are waiting for a follow-up."
    />
<script>
    $('document').ready(function() {
        $('#info_bubble_306be5c84f4338ff865ca4793fb328f3').popover();
    });
</script>            </label>
        </li>        
        <li>
            <label>
                <input type="checkbox" name="fl_estim_complete" id="fl_estim_complete" value="1"
                       checked='checked' />
                Completed                <img src="http://test.localhost/progisync/insurer/pub/shared/medias/i_icon.png"
    id="info_bubble_91a378e125753ad74b033e94c7b12706" class="info-bubble-icon"
            style="cursor:pointer"
    
    rel="popover"
    data-html="true"
    data-trigger="click"
    data-placement="right"
    data-title=""
    data-content="Show appointments that have been marked as completed by the supplier."
    />
<script>
    $('document').ready(function() {
        $('#info_bubble_91a378e125753ad74b033e94c7b12706').popover();
    });
</script>            </label>
        </li>        
        <li>
            <label>
                <input type="checkbox" name="fl_estim_cancel" id="fl_estim_cancel" value="1"
                       checked='checked' />
                Cancelled by the supplier                
            </label>
        </li>
        <!-- Not used right now, removed        
                Recycled into something else -->
        <li>
            <label>
                <input type="checkbox" name="fl_estim_closed" id="fl_estim_closed" value="1" 
                       checked='checked' />
                Closed by insurer                
            </label>
        </li>        
        <li>
            <label>
                <input type="checkbox" name="fl_estim_abort" id="fl_estim_closed" value="1" 
                       checked='checked' />
                Cancelled by insurer                
            </label>
        </li>        
    </ul>


        <ul class="option-container">
            <li>
                Search                &nbsp;<img src="http://test.localhost/progisync/insurer/pub/shared/medias/i_icon.png"
    id="info_bubble_246ba26b5b33d037405f55b240be4777" class="info-bubble-icon"
            style="cursor:pointer"
    
    rel="popover"
    data-html="true"
    data-trigger="click"
    data-placement="right"
    data-title=""
    data-content="Search for a claim number, a supplier, an insured or a vehicle."
    />
<script>
    $('document').ready(function() {
        $('#info_bubble_246ba26b5b33d037405f55b240be4777').popover();
    });
</script>            </li>
            <li>
                <input type="text" name="search_field" id="search_field" value="" 
                       placeholder="Enter your search here" />
            </li>			
            <li>&nbsp;</li>
            <li>
                Insurer branch            </li>
            <li>
                <select

    id="insurer_branch_id"    name="insurer_branch_id"                            required='true' >


                <option value="0"
             selected="selected"            >
            All the branches        </option>
            <option value="69"
                        >
            Promutuel of fjord Branche        </option>
    
</select>

                </li>
            <li>&nbsp;</li>
            <li>                
                Booked during last                 &nbsp;<img src="http://test.localhost/progisync/insurer/pub/shared/medias/i_icon.png"
    id="info_bubble_c0c3a9fb8385d8e03a46adadde9af3bf" class="info-bubble-icon"
            style="cursor:pointer"
    
    rel="popover"
    data-html="true"
    data-trigger="click"
    data-placement="right"
    data-title=""
    data-content="Filter the claims according to the date of their last update."
    />
<script>
    $('document').ready(function() {
        $('#info_bubble_c0c3a9fb8385d8e03a46adadde9af3bf').popover();
    });
</script>            </li>
            <li>

                <select name="booked_during" id="booked_during">
                    <option value="" >
                        Show all                    </option>
                    <option value="7" >
                        7 days                    </option>
                    <option value="14" selected='selected'>
                        14 days                    </option>
                    <option value="21" >
                        21 days                    </option>
                    <option value="28" >
                        28 days                    </option>
                </select>
            </li>
            <li>&nbsp;</li>
            <li>
                <label>
                    <input type="checkbox" name="fl_show_mine_only" id="fl_show_mine_only" value="1" 
                        checked='checked' />
                    Show my claims only                </label>
            </li>
		</ul>
		
		<ul class="option-container">
            <li>
                Sort by            </li>
            <li>                
                <select name="sort_by" id="sort_by">
                    <option value="MDATE" selected='selected'>
                        Assignation creation date                    </option>
                    <option value="BRAND" >
                        Insurer                    </option>
                    <option value="CLIEN" >
                        Insured                    </option>
                    <option value="SUPPL" >
                        Supplier                    </option>
                    <option value="CLAIM" >
                        Claim number                    </option>
                    <option value="PHONE" >
                        Phone number                    </option>                    
                </select>
                <br/>
                <select name="sort_order" id="sort_order">
                    <option value="asc" selected='selected'>
                        Ascending                    </option>
                    <option value="desc" >
                        Descending                    </option>
                </select>
            </li>
            <li>&nbsp;</li>
            <li>
                <input type="button" value="Filter results" class="btn btn-primary" id="filter_button"/>                
            </li>
            <li>&nbsp;</li>
            <li>
                <input type="button" value="Export to Excel" class="btn btn-success" id="excel_button"/>
            </li>
        </ul>    

    </form>
</div>

<div style="clear: both"></div>

<div id="claim_list">
    

    

<form method='POST'
      action='http://test.localhost/progisync/insurer/pub/claims/batch_reassign'
                    
    class=' form-horizontal ' >

    
<input type="hidden"
        name="csrf_psy_insurer_token"                    value="3f12b0d56ecf9d3e408473bcde7fcb2e" />

    




    <h3>
        Found 1 claims.    </h3>

            <div style="">
            <input type="submit" value="Reassign the selected appointments" class="btn btn-primary" disabled="disabled" id="btn_batch_reassign"/>
        </div>
    
    <p style="margin-top: 4px; margin-bottom: 0; padding: 0; text-align: left; font-size: 0.8em;">Note: The hours are shown according to the claim's province.</p>
    
    <table border="0" cellspacing="0" cellpadding="0" class="files-insurance">
        <tr>
            <th>Insured</th>

                        <th>
                <input type="checkbox" id="batch_reassign_all"/>
            </th>
                        <th>
                Supplier</th>
            <th>Booked on...</th>
            <th class="th-estimate" >
                <div class="th-content-wrapper">
                    Appointment                    <div id="estimate-img"></div>
                </div>
            </th>
            <th class="th-repair">
                <div class="th-content-wrapper">
                    Repair starts...                    <div id="repair-img"></div>
                </div>
            </th>
        </tr>
        <tr>
    <td class="client"  >

    <a href="http://test.localhost/progisync/insurer/pub/claims/show/16390" class="claimlink" data-client_id="17062">
        <strong>Bill Guerin</strong>
    </a>
    <div class="insured" title="Bill Guerin">
        <table border="0" cellpadding="6" cellspacing="1" style="font-size: 0.9em;">
            <tr>
                <td align="right" valign="top" bgcolor="#eeeeee">Claim</td>
                <td><strong>24232</strong></td>
            </tr>
            <tr>
                <td align="right" valign="top" bgcolor="#eeeeee">Vehicle</td>
                <td>Smart</td>
            </tr>
            <tr>
                <td align="right" valign="top" bgcolor="#eeeeee">Postal code</td>
                <td>G8W0B5</td>
            </tr>
            <tr>
                <td align="right" valign="top" bgcolor="#eeeeee">Phone (home)</td>
                <td>
                    819 555-4444                    
                </td>
            </tr>
            <tr>
                <td align="right" valign="top" bgcolor="#eeeeee">Email</td>
                <td><a href="mailto:jean-pierre@progi.com">jean-pierre@progi.com</a></td>
            </tr>
        </table>
    </div>
    Promutuel of fjord Branche            <span class="tel">819 555-4444</span>
                <a href="mailto:jean-pierre@progi.com" class="email">jean-pierre@progi.com</a>
    </td>

    
                        <td class="batch-checkbox">
                            <input type="checkbox" name="batch_reassign[]" value="16532" class="batch_reassign"/>
                        </td>
            <td class="shop">
        <a href="#show_infos" class="show_supplier_infos" data-id="1463">JP Hood King</a><br>        
        Rely   
                <div class="reassign-link">
            <a href="http://test.localhost/progisync/insurer/pub/locator?type=auto&reassign_id=16532" title="Reassign">
                <img src="http://test.localhost/progisync/insurer/pub/medias/reassign.png" alt="Reassign" width="20" height="20" border="0">
            </a>
        </div>
            </td>

    <td class="created booked">
                Friday January 30        <br>
        8:57 am    </td>
    <td class="appointment pending">
    Friday January 30    <br>
    10:00 am    <br/>
    <small>Waiting on supplier's follow up</small>
</td>
<td class="appointment">&nbsp;
    </td>        
</tr>    </table>
    
    <script type="text/javascript">

        function update_reassign_state()
        {


            var nb_checked = $('.batch_reassign:checked').length;

            if (nb_checked > 0) {
                $('#btn_batch_reassign').removeAttr('disabled');
            } else {
                $('#btn_batch_reassign').attr('disabled', 'disabled');
            }

            var nb_checkbox = $('.batch_reassign').length;
            if (nb_checked == nb_checkbox && nb_checkbox > 0) {
                $('#batch_reassign_all').prop('checked', true);
            } else {
                $('#batch_reassign_all').prop('checked', false);
            }

        }

        $(document).ready(function() {
                        
            $('.batch_reassign').click(function (){
                update_reassign_state();
            });
            
            $('#batch_reassign_all').click(function () {
                if ($(this).is(':checked')) {                
                    set_all_checkbox(true);
                } else {
                    set_all_checkbox(false);
                }
                update_reassign_state();
            });
            
            $('.show_supplier_infos').click(function (){
                var supplier_id = $(this).data('id');

                var get = {'supplier_id': supplier_id};
                var url = "http://test.localhost/progisync/insurer/pub/admin_supplier/ajax_infos";

                $.get(url, get, function(data) {
                    if (data) {
                        psy.utils.alert(data);
                    }
                });
            });            
        });
        
        function set_all_checkbox(to_value)
        {   
            $('.batch_reassign').each(function(i,e){                
                $(e).prop('checked',to_value);                
            });            
        }
    
    </script>

    </form>


</div>
    
<script type="text/javascript" >
    //return to login if session not allowed
    psy.ajaxError403("Your session has expired or the requested action could not be completed.", '');

    $( function() {
        $('#claim_search input:checkbox').on('click', refresh_selected_options);
        refresh_selected_options();        
    });


    $('#filter_button').click(function() {
        
        var get = $('#search_form').serialize();

        var spinner = new Spinner().spin();
        $(spinner.el).css('left', '50%');
        $('#claim_list').prepend(spinner.el);

        //here we add a timestamp to refresh the query in ie
        url = "http://test.localhost/progisync/insurer/pub/claims/ajax_filter";
        url += '?_ts=' + new Date().getTime();

        $.get(url, get, function(data) {
            
            if (data.result_code == 200) {
                $('#claim_list').html(data.result);
            }
            
        },'json');
        
    });
    
    $('#excel_button').click(function() {
        
        $('#search_form').attr('action', "http://test.localhost/progisync/insurer/pub/claims/excel_export");
        $('#search_form').submit();
        
    });
    
    $( '#search_field' ).keypress(function(e) {        
        if ( e.keyCode == 13 ) {            
            $('#filter_button').click();
            return false;
        }
    });
//    $( '#booked_during' ).on( 'change' , function() {
//        $('#fl_booked_during').prop('checked' , $(this).val() != "" );
//    });


    function refresh_selected_options()
    {
        $('#claim_search li').each( function(i,e) {
            if ($(e).find('input[type="checkbox"]').is(':checked')) {
                $(e).addClass('selected');
            } else {
                $(e).removeClass('selected');
            }
        });
    }


</script>


<div id="files-insurance-legend"><img src="http://test.localhost/progisync/insurer/pub/medias/reassign.png"> = Reassign</div>
    </div>
    
    <script>
    /**
     * easy script access to the crsf token for adding to ajax requests.
     * usage example :
     * var data = { id: someId }
     * $.extend( data, crsf_token );
     * $.ajax( url, data );
     */
    var crsf_token_data = {
        name: 'csrf_psy_insurer_token',
        value: '3f12b0d56ecf9d3e408473bcde7fcb2e'
    };
    var crsf_token = {
        csrf_psy_insurer_token: '3f12b0d56ecf9d3e408473bcde7fcb2e'
    };
</script>
	<div id="footer">
		<p>ProgiSync is a <a href="http://www.progi.com">Progi</a> solution. All rights reserved. | Contact Progi at 1-855-310-6343.</p>
	</div>
</body>
</html>

