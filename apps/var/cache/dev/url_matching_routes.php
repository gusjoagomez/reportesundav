<?php

/**
 * This file has been auto-generated
 * by the Symfony Routing Component.
 */

return [
    false, // $matchHost
    [ // $staticRoutes
        '/_profiler' => [[['_route' => '_profiler_home', '_controller' => 'web_profiler.controller.profiler::homeAction'], null, null, null, true, false, null]],
        '/_profiler/search' => [[['_route' => '_profiler_search', '_controller' => 'web_profiler.controller.profiler::searchAction'], null, null, null, false, false, null]],
        '/_profiler/search_bar' => [[['_route' => '_profiler_search_bar', '_controller' => 'web_profiler.controller.profiler::searchBarAction'], null, null, null, false, false, null]],
        '/_profiler/phpinfo' => [[['_route' => '_profiler_phpinfo', '_controller' => 'web_profiler.controller.profiler::phpinfoAction'], null, null, null, false, false, null]],
        '/_profiler/xdebug' => [[['_route' => '_profiler_xdebug', '_controller' => 'web_profiler.controller.profiler::xdebugAction'], null, null, null, false, false, null]],
        '/_profiler/open' => [[['_route' => '_profiler_open_file', '_controller' => 'web_profiler.controller.profiler::openAction'], null, null, null, false, false, null]],
        '/catbases' => [[['_route' => 'catbases_index', '_controller' => 'App\\Controller\\CatBasesController::index'], null, null, null, false, false, null]],
        '/catbases/list' => [[['_route' => 'catbases_list', '_controller' => 'App\\Controller\\CatBasesController::list'], null, null, null, false, false, null]],
        '/catbases/new' => [[['_route' => 'catbases_new', '_controller' => 'App\\Controller\\CatBasesController::new'], null, null, null, false, false, null]],
        '/catrels' => [[['_route' => 'catrels_index', '_controller' => 'App\\Controller\\CatRelsController::index'], null, null, null, false, false, null]],
        '/catrels/list' => [[['_route' => 'catrels_list', '_controller' => 'App\\Controller\\CatRelsController::list'], null, null, null, false, false, null]],
        '/catrels/new' => [[['_route' => 'catrels_new', '_controller' => 'App\\Controller\\CatRelsController::new'], null, null, null, false, false, null]],
        '/cattable/new' => [[['_route' => 'cattable_new', '_controller' => 'App\\Controller\\CatTableController::new'], null, null, null, false, false, null]],
        '/login' => [[['_route' => 'app_login', '_controller' => 'App\\Controller\\LoginController::index'], null, null, null, false, false, null]],
        '/logout' => [[['_route' => 'app_logout', '_controller' => 'App\\Controller\\LoginController::logout'], null, null, null, false, false, null]],
        '/' => [[['_route' => 'app_root', '_controller' => 'App\\Controller\\LoginController::root'], null, null, null, false, false, null]],
        '/welcome' => [[['_route' => 'app_welcome', '_controller' => 'App\\Controller\\LoginController::welcome'], null, null, null, false, false, null]],
        '/menu' => [[['_route' => 'menu_index', '_controller' => 'App\\Controller\\MenuController::index'], null, null, null, false, false, null]],
        '/reportes' => [[['_route' => 'reportes_index', '_controller' => 'App\\Controller\\ReportesController::index'], null, null, null, false, false, null]],
        '/reportes/list' => [[['_route' => 'reportes_list', '_controller' => 'App\\Controller\\ReportesController::list'], null, null, null, false, false, null]],
        '/secaudit' => [[['_route' => 'secaudit_index', '_controller' => 'App\\Controller\\SecAuditController::index'], null, null, null, false, false, null]],
        '/secaudit/list' => [[['_route' => 'secaudit_list', '_controller' => 'App\\Controller\\SecAuditController::list'], null, null, null, false, false, null]],
        '/secaudit/new' => [[['_route' => 'secaudit_new', '_controller' => 'App\\Controller\\SecAuditController::new'], null, null, null, false, false, null]],
        '/seccompany' => [[['_route' => 'seccompany_index', '_controller' => 'App\\Controller\\SecCompanyController::index'], null, null, null, false, false, null]],
        '/seccompany/list' => [[['_route' => 'seccompany_list', '_controller' => 'App\\Controller\\SecCompanyController::list'], null, null, null, false, false, null]],
        '/seccompany/new' => [[['_route' => 'seccompany_new', '_controller' => 'App\\Controller\\SecCompanyController::new'], null, null, null, false, false, null]],
        '/secmenu' => [[['_route' => 'secmenu_index', '_controller' => 'App\\Controller\\SecMenuController::index'], null, null, null, false, false, null]],
        '/secmenu/list' => [[['_route' => 'secmenu_list', '_controller' => 'App\\Controller\\SecMenuController::list'], null, null, null, false, false, null]],
        '/secmenu/new' => [[['_route' => 'secmenu_new', '_controller' => 'App\\Controller\\SecMenuController::new'], null, null, null, false, false, null]],
        '/secrole' => [[['_route' => 'secrole_index', '_controller' => 'App\\Controller\\SecRoleController::index'], null, null, null, false, false, null]],
        '/secrole/list' => [[['_route' => 'secrole_list', '_controller' => 'App\\Controller\\SecRoleController::list'], null, null, null, false, false, null]],
        '/secrole/new' => [[['_route' => 'secrole_new', '_controller' => 'App\\Controller\\SecRoleController::new'], null, null, null, false, false, null]],
        '/secrolemenu' => [[['_route' => 'secrolemenu_index', '_controller' => 'App\\Controller\\SecRolemenuController::index'], null, null, null, false, false, null]],
        '/secrolemenu/list' => [[['_route' => 'secrolemenu_list', '_controller' => 'App\\Controller\\SecRolemenuController::list'], null, null, null, false, false, null]],
        '/secrolemenu/new' => [[['_route' => 'secrolemenu_new', '_controller' => 'App\\Controller\\SecRolemenuController::new'], null, null, null, false, false, null]],
        '/secuser' => [[['_route' => 'secuser_index', '_controller' => 'App\\Controller\\SecUserController::index'], null, null, null, false, false, null]],
        '/secuser/list' => [[['_route' => 'secuser_list', '_controller' => 'App\\Controller\\SecUserController::list'], null, null, null, false, false, null]],
        '/secuser/new' => [[['_route' => 'secuser_new', '_controller' => 'App\\Controller\\SecUserController::new'], null, null, null, false, false, null]],
        '/syncbases' => [[['_route' => 'syncbases_index', '_controller' => 'App\\Controller\\SyncBasesController::index'], null, null, null, false, false, null]],
        '/syncbases/list' => [[['_route' => 'syncbases_list', '_controller' => 'App\\Controller\\SyncBasesController::list'], null, null, null, false, false, null]],
        '/syncbases/new' => [[['_route' => 'syncbases_new', '_controller' => 'App\\Controller\\SyncBasesController::new'], null, null, null, false, false, null]],
        '/syncbases/listfiles' => [[['_route' => 'syncbases_listfiles', '_controller' => 'App\\Controller\\SyncBasesController::listfiles'], null, null, null, false, false, null]],
        '/syncbasestables' => [[['_route' => 'syncbasestables_index', '_controller' => 'App\\Controller\\SyncBasesTablesController::index'], null, null, null, false, false, null]],
        '/systype' => [[['_route' => 'systype_index', '_controller' => 'App\\Controller\\SysTypeController::index'], null, null, null, false, false, null]],
        '/systype/list' => [[['_route' => 'systype_list', '_controller' => 'App\\Controller\\SysTypeController::list'], null, null, null, false, false, null]],
        '/systype/new' => [[['_route' => 'systype_new', '_controller' => 'App\\Controller\\SysTypeController::new'], null, null, null, false, false, null]],
        '/systypetype' => [[['_route' => 'systypetype_index', '_controller' => 'App\\Controller\\SysTypetypeController::index'], null, null, null, false, false, null]],
        '/systypetype/list' => [[['_route' => 'systypetype_list', '_controller' => 'App\\Controller\\SysTypetypeController::list'], null, null, null, false, false, null]],
        '/systypetype/new' => [[['_route' => 'systypetype_new', '_controller' => 'App\\Controller\\SysTypetypeController::new'], null, null, null, false, false, null]],
        '/syszone' => [[['_route' => 'syszone_index', '_controller' => 'App\\Controller\\SysZoneController::index'], null, null, null, false, false, null]],
        '/syszone/list' => [[['_route' => 'syszone_list', '_controller' => 'App\\Controller\\SysZoneController::list'], null, null, null, false, false, null]],
        '/syszone/new' => [[['_route' => 'syszone_new', '_controller' => 'App\\Controller\\SysZoneController::new'], null, null, null, false, false, null]],
        '/test' => [[['_route' => 'test_index', '_controller' => 'App\\Controller\\TestController::index'], null, null, null, false, false, null]],
        '/test/list' => [[['_route' => 'test_list', '_controller' => 'App\\Controller\\TestController::list'], null, null, null, false, false, null]],
        '/test/new' => [[['_route' => 'test_new', '_controller' => 'App\\Controller\\TestController::new'], null, null, null, false, false, null]],
        '/user' => [[['_route' => 'user_index', '_controller' => 'App\\Controller\\UserController::index'], null, null, null, false, false, null]],
        '/user/list' => [[['_route' => 'user_list', '_controller' => 'App\\Controller\\UserController::list'], null, null, null, false, false, null]],
        '/user/new' => [[['_route' => 'user_new', '_controller' => 'App\\Controller\\UserController::new'], null, null, null, false, false, null]],
        '/user/chpass' => [[['_route' => 'user_chpass', '_controller' => 'App\\Controller\\UserController::chpass'], null, null, null, false, false, null]],
    ],
    [ // $regexpList
        0 => '{^(?'
                .'|/_(?'
                    .'|error/(\\d+)(?:\\.([^/]++))?(*:38)'
                    .'|wdt/([^/]++)(*:57)'
                    .'|profiler/([^/]++)(?'
                        .'|/(?'
                            .'|search/results(*:102)'
                            .'|router(*:116)'
                            .'|exception(?'
                                .'|(*:136)'
                                .'|\\.css(*:149)'
                            .')'
                        .')'
                        .'|(*:159)'
                    .')'
                .')'
                .'|/cat(?'
                    .'|bases/([^/]++)/(?'
                        .'|edit(*:198)'
                        .'|delete(*:212)'
                    .')'
                    .'|fields/([^/]++)/(?'
                        .'|index(*:245)'
                        .'|list(*:257)'
                        .'|new(*:268)'
                        .'|edit(*:280)'
                        .'|delete(*:294)'
                        .'|update(*:308)'
                        .'|relupdate(*:325)'
                    .')'
                    .'|rels/([^/]++)/(?'
                        .'|edit(*:355)'
                        .'|delete(*:369)'
                    .')'
                    .'|table/([^/]++)/(?'
                        .'|index(*:401)'
                        .'|list(*:413)'
                        .'|edit(*:425)'
                        .'|delete(*:439)'
                        .'|update(*:453)'
                    .')'
                .')'
                .'|/reportes/([^/]++)/(?'
                    .'|view(*:489)'
                    .'|detalle(*:504)'
                .')'
                .'|/s(?'
                    .'|ec(?'
                        .'|audit/([^/]++)/(?'
                            .'|edit(*:545)'
                            .'|delete(*:559)'
                        .')'
                        .'|company/([^/]++)/(?'
                            .'|edit(*:592)'
                            .'|delete(*:606)'
                        .')'
                        .'|menu/([^/]++)/(?'
                            .'|edit(*:636)'
                            .'|delete(*:650)'
                        .')'
                        .'|role(?'
                            .'|/([^/]++)/(?'
                                .'|edit(*:683)'
                                .'|delete(*:697)'
                            .')'
                            .'|menu/([^/]++)/(?'
                                .'|edit(*:727)'
                                .'|delete(*:741)'
                            .')'
                        .')'
                        .'|user/([^/]++)/(?'
                            .'|edit(*:772)'
                            .'|delete(*:786)'
                        .')'
                    .')'
                    .'|y(?'
                        .'|ncbases(?'
                            .'|/([^/]++)/(?'
                                .'|edit(*:827)'
                                .'|delete(*:841)'
                                .'|genfile(*:856)'
                            .')'
                            .'|tables/([^/]++)/(?'
                                .'|list(*:888)'
                                .'|new(*:899)'
                                .'|edit(*:911)'
                                .'|delete(*:925)'
                            .')'
                        .')'
                        .'|s(?'
                            .'|type(?'
                                .'|/([^/]++)/(?'
                                    .'|edit(*:963)'
                                    .'|delete(*:977)'
                                .')'
                                .'|type/([^/]++)/(?'
                                    .'|edit(*:1007)'
                                    .'|delete(*:1022)'
                                .')'
                            .')'
                            .'|zone/([^/]++)/(?'
                                .'|edit(*:1054)'
                                .'|delete(*:1069)'
                            .')'
                        .')'
                    .')'
                .')'
                .'|/test/([^/]++)/(?'
                    .'|edit(*:1104)'
                    .'|delete(*:1119)'
                .')'
                .'|/user/([^/]++)/(?'
                    .'|edit(*:1151)'
                    .'|delete(*:1166)'
                    .'|chopass(*:1182)'
                .')'
            .')/?$}sDu',
    ],
    [ // $dynamicRoutes
        38 => [[['_route' => '_preview_error', '_controller' => 'error_controller::preview', '_format' => 'html'], ['code', '_format'], null, null, false, true, null]],
        57 => [[['_route' => '_wdt', '_controller' => 'web_profiler.controller.profiler::toolbarAction'], ['token'], null, null, false, true, null]],
        102 => [[['_route' => '_profiler_search_results', '_controller' => 'web_profiler.controller.profiler::searchResultsAction'], ['token'], null, null, false, false, null]],
        116 => [[['_route' => '_profiler_router', '_controller' => 'web_profiler.controller.router::panelAction'], ['token'], null, null, false, false, null]],
        136 => [[['_route' => '_profiler_exception', '_controller' => 'web_profiler.controller.exception_panel::body'], ['token'], null, null, false, false, null]],
        149 => [[['_route' => '_profiler_exception_css', '_controller' => 'web_profiler.controller.exception_panel::stylesheet'], ['token'], null, null, false, false, null]],
        159 => [[['_route' => '_profiler', '_controller' => 'web_profiler.controller.profiler::panelAction'], ['token'], null, null, false, true, null]],
        198 => [[['_route' => 'catbases_edit', '_controller' => 'App\\Controller\\CatBasesController::edit'], ['id'], null, null, false, false, null]],
        212 => [[['_route' => 'catbases_delete', '_controller' => 'App\\Controller\\CatBasesController::delete'], ['id'], null, null, false, false, null]],
        245 => [[['_route' => 'catfields_index', '_controller' => 'App\\Controller\\CatFieldsController::index'], ['id'], null, null, false, false, null]],
        257 => [[['_route' => 'catfields_list', '_controller' => 'App\\Controller\\CatFieldsController::list'], ['id'], null, null, false, false, null]],
        268 => [[['_route' => 'catfields_new', '_controller' => 'App\\Controller\\CatFieldsController::new'], ['id'], null, null, false, false, null]],
        280 => [[['_route' => 'catfields_edit', '_controller' => 'App\\Controller\\CatFieldsController::edit'], ['id'], null, null, false, false, null]],
        294 => [[['_route' => 'catfields_delete', '_controller' => 'App\\Controller\\CatFieldsController::delete'], ['id'], null, null, false, false, null]],
        308 => [[['_route' => 'catfields_update', '_controller' => 'App\\Controller\\CatFieldsController::update'], ['id'], null, null, false, false, null]],
        325 => [[['_route' => 'catfields_relupdate', '_controller' => 'App\\Controller\\CatFieldsController::relupdate'], ['id'], null, null, false, false, null]],
        355 => [[['_route' => 'catrels_edit', '_controller' => 'App\\Controller\\CatRelsController::edit'], ['id'], null, null, false, false, null]],
        369 => [[['_route' => 'catrels_delete', '_controller' => 'App\\Controller\\CatRelsController::delete'], ['id'], null, null, false, false, null]],
        401 => [[['_route' => 'cattable_index', '_controller' => 'App\\Controller\\CatTableController::index'], ['id'], null, null, false, false, null]],
        413 => [[['_route' => 'cattable_list', '_controller' => 'App\\Controller\\CatTableController::list'], ['id'], null, null, false, false, null]],
        425 => [[['_route' => 'cattable_edit', '_controller' => 'App\\Controller\\CatTableController::edit'], ['id'], null, null, false, false, null]],
        439 => [[['_route' => 'cattable_delete', '_controller' => 'App\\Controller\\CatTableController::delete'], ['id'], null, null, false, false, null]],
        453 => [[['_route' => 'cattable_update', '_controller' => 'App\\Controller\\CatTableController::update'], ['id'], null, null, false, false, null]],
        489 => [[['_route' => 'reportes_view', '_controller' => 'App\\Controller\\ReportesController::view'], ['id'], null, null, false, false, null]],
        504 => [[['_route' => 'reportes_detalle', '_controller' => 'App\\Controller\\ReportesController::reportesdetallegrilla'], ['id'], null, null, false, false, null]],
        545 => [[['_route' => 'secaudit_edit', '_controller' => 'App\\Controller\\SecAuditController::edit'], ['id'], null, null, false, false, null]],
        559 => [[['_route' => 'secaudit_delete', '_controller' => 'App\\Controller\\SecAuditController::delete'], ['id'], null, null, false, false, null]],
        592 => [[['_route' => 'seccompany_edit', '_controller' => 'App\\Controller\\SecCompanyController::edit'], ['id'], null, null, false, false, null]],
        606 => [[['_route' => 'seccompany_delete', '_controller' => 'App\\Controller\\SecCompanyController::delete'], ['id'], null, null, false, false, null]],
        636 => [[['_route' => 'secmenu_edit', '_controller' => 'App\\Controller\\SecMenuController::edit'], ['id'], null, null, false, false, null]],
        650 => [[['_route' => 'secmenu_delete', '_controller' => 'App\\Controller\\SecMenuController::delete'], ['id'], null, null, false, false, null]],
        683 => [[['_route' => 'secrole_edit', '_controller' => 'App\\Controller\\SecRoleController::edit'], ['id'], null, null, false, false, null]],
        697 => [[['_route' => 'secrole_delete', '_controller' => 'App\\Controller\\SecRoleController::delete'], ['id'], null, null, false, false, null]],
        727 => [[['_route' => 'secrolemenu_edit', '_controller' => 'App\\Controller\\SecRolemenuController::edit'], ['id'], null, null, false, false, null]],
        741 => [[['_route' => 'secrolemenu_delete', '_controller' => 'App\\Controller\\SecRolemenuController::delete'], ['id'], null, null, false, false, null]],
        772 => [[['_route' => 'secuser_edit', '_controller' => 'App\\Controller\\SecUserController::edit'], ['id'], null, null, false, false, null]],
        786 => [[['_route' => 'secuser_delete', '_controller' => 'App\\Controller\\SecUserController::delete'], ['id'], null, null, false, false, null]],
        827 => [[['_route' => 'syncbases_edit', '_controller' => 'App\\Controller\\SyncBasesController::edit'], ['id'], null, null, false, false, null]],
        841 => [[['_route' => 'syncbases_delete', '_controller' => 'App\\Controller\\SyncBasesController::delete'], ['id'], null, null, false, false, null]],
        856 => [[['_route' => 'syncbases_genfile', '_controller' => 'App\\Controller\\SyncBasesController::genfile'], ['id'], null, null, false, false, null]],
        888 => [[['_route' => 'syncbasestables_list', '_controller' => 'App\\Controller\\SyncBasesTablesController::list'], ['id'], null, null, false, false, null]],
        899 => [[['_route' => 'syncbasestables_new', '_controller' => 'App\\Controller\\SyncBasesTablesController::new'], ['id'], null, null, false, false, null]],
        911 => [[['_route' => 'syncbasestables_edit', '_controller' => 'App\\Controller\\SyncBasesTablesController::edit'], ['id'], null, null, false, false, null]],
        925 => [[['_route' => 'syncbasestables_delete', '_controller' => 'App\\Controller\\SyncBasesTablesController::delete'], ['id'], null, null, false, false, null]],
        963 => [[['_route' => 'systype_edit', '_controller' => 'App\\Controller\\SysTypeController::edit'], ['id'], null, null, false, false, null]],
        977 => [[['_route' => 'systype_delete', '_controller' => 'App\\Controller\\SysTypeController::delete'], ['id'], null, null, false, false, null]],
        1007 => [[['_route' => 'systypetype_edit', '_controller' => 'App\\Controller\\SysTypetypeController::edit'], ['id'], null, null, false, false, null]],
        1022 => [[['_route' => 'systypetype_delete', '_controller' => 'App\\Controller\\SysTypetypeController::delete'], ['id'], null, null, false, false, null]],
        1054 => [[['_route' => 'syszone_edit', '_controller' => 'App\\Controller\\SysZoneController::edit'], ['id'], null, null, false, false, null]],
        1069 => [[['_route' => 'syszone_delete', '_controller' => 'App\\Controller\\SysZoneController::delete'], ['id'], null, null, false, false, null]],
        1104 => [[['_route' => 'test_edit', '_controller' => 'App\\Controller\\TestController::edit'], ['id'], null, null, false, false, null]],
        1119 => [[['_route' => 'test_delete', '_controller' => 'App\\Controller\\TestController::delete'], ['id'], null, null, false, false, null]],
        1151 => [[['_route' => 'user_edit', '_controller' => 'App\\Controller\\UserController::edit'], ['id'], null, null, false, false, null]],
        1166 => [[['_route' => 'user_delete', '_controller' => 'App\\Controller\\UserController::delete'], ['id'], null, null, false, false, null]],
        1182 => [
            [['_route' => 'user_chopass', '_controller' => 'App\\Controller\\UserController::chopass'], ['id'], null, null, false, false, null],
            [null, null, null, null, false, false, 0],
        ],
    ],
    null, // $checkCondition
];
