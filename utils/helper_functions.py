def group_user_roles(user_roles):
    custom_user_roles = {
        "non_conformity": [],
        "remittance_advice": [],
        "pettycash": [],
        "adjudication": [],
        "tokens": [],
        "tenders": [],
        "ace": [],
        "users": [],
    }
        
    for role in user_roles:
        if role.application == "users":
            custom_role = {
                "id": role.id,
                "role": role.role,
                "name": role.name,
                "description": role.description,
                "application": role.application
            }
            
            custom_user_roles["users"].append(custom_role)
        
        if role.application == "non_conformity":
            custom_role = {
                "id": role.id,
                "role": role.role,
                "name": role.name,
                "description": role.description,
                "application": role.application
            }
            
            custom_user_roles["non_conformity"].append(custom_role)
            
        if role.application == "remittance_advice":
            custom_role = {
                "id": role.id,
                "role": role.role,
                "name": role.name,
                "description": role.description,
                "application": role.application
            }
            
            custom_user_roles['remittance_advice'].append(custom_role)
        
        if role.application == "pettycash":
            custom_role = {
                "id": role.id,
                "role": role.role,
                "name": role.name,
                "description": role.description,
                "application": role.application
            }
            
            custom_user_roles['pettycash'].append(custom_role)

        if role.application == "adjudication":
            custom_role = {
                "id": role.id,
                "role": role.role,
                "name": role.name,
                "description": role.description,
                "application": role.application
            }
            
            custom_user_roles['adjudication'].append(custom_role)
            
        if role.application == "tokens":
            custom_role = {
                "id": role.id,
                "role": role.role,
                "name": role.name,
                "description": role.description,
                "application": role.application
            }
            
            custom_user_roles['tokens'].append(custom_role)

        if role.application == "tenders":
            custom_role = {
                "id": role.id,
                "role": role.role,
                "name": role.name,
                "description": role.description,
                "application": role.application
            }
            
            custom_user_roles['tenders'].append(custom_role)

        if role.application == "ace":
            custom_role = {
                "id": role.id,
                "role": role.role,
                "name": role.name,
                "description": role.description,
                "application": role.application
            }
            
            custom_user_roles['ace'].append(custom_role)
            
    return custom_user_roles


def get_user_groups(user_groups):
    
    network_development = {
        "key": "",
        "name": ""
    }
    
    section = {
        "key": "",
        "name": ""
    }
    
    admin = {
        "key": "",
        "name": ""
    }
    
    # user groups, apps, section, admin_status
    if 'app_network_development' in user_groups:
        
        if 'network_development_technical_clerk' in user_groups:
            network_development['key'] = 'network_development_technical_clerk' 
            network_development['name'] = 'Technical Clerk'
        
        elif 'network_development_snr_eng_planning_design' in user_groups:
            network_development['key'] = 'network_development_snr_eng_planning_design'
            network_development['name'] = 'Senior Eng Planning & Design'
        
        elif 'network_development_planning_technician' in user_groups:
            network_development['key'] = 'network_development_planning_technician'
            network_development['name'] = 'Planning Technician'
        
        elif 'network_development_ptech_do' in user_groups:
            network_development['key'] = 'network_development_ptech_do'
            network_development['name'] = 'PTECH DO'
        
        elif 'network_development_draughts_person' in user_groups:
            network_development['key'] = 'network_development_draughts_person'
            network_development['name'] = 'Draughts Person'
            
        elif 'network_development_nde' in user_groups:
            network_development['key'] = 'network_development_nde'
            network_development['name'] = 'NDE'
            
    if 'superuser' in user_groups:
        admin['key'] = 'admin'
        admin['name'] = 'Admin'
    else:
        admin['key'] = 'normal'
        admin['name'] = 'Normal User'
            
    if 'sec_makoni_depot' in user_groups:
        section['key'] = 'sec_makoni_depot'
        section['name'] = 'Makoni Depot'
    elif 'sec_zengeza_depot' in user_groups:
        section['key'] = 'sec_zengeza_depot'
        section['name'] = 'Zengeza Depot'
    elif 'sec_kuwadzana_depot' in user_groups:
        section['key'] = 'sec_kuwadzana_depot'
        section['name'] = 'Kuwadzana Depot'
    elif 'sec_mabelreign_depot' in user_groups:
        section['key'] = 'sec_mabelreign_depot'
        section['name'] = 'Mabelreign Depot'
    elif 'sec_warrenpark_depot' in user_groups:
        section['key'] = 'sec_warrenpark_depot'
        section['name'] = 'Warren Park Depot'
    elif 'sec_glenview_depot' in user_groups:
        section['key'] = 'sec_glenview_depot'
        section['name'] = 'Glen View Depot'  
    elif 'sec_waterfalls_depot' in user_groups:
        section['key'] = 'sec_waterfalls_depot'
        section['name'] = 'Waterfalls Depot'  
    elif 'sec_southerton_depot' in user_groups:
        section['key'] = 'sec_southerton_depot'
        section['name'] = 'Southerton Depot'
    elif 'sec_cbd_depot' in user_groups:
        section['key'] = 'sec_cbd_depot'
        section['name'] = 'CBD Depot'
    elif 'sec_borrowdale_depot' in user_groups:
        section['key'] = 'sec_borrowdale_depot'
        section['name'] = 'Borrowdale Depot' 
    elif 'sec_mabvuku_depot' in user_groups:
        section['key'] = 'sec_mabvuku_depot'
        section['name'] = 'Mabvuku Depot' 
    elif 'sec_ruwa_depot' in user_groups:
        section['key'] = 'sec_ruwa_depot'
        section['name'] = 'Ruwa Depot' 
    elif 'sec_chitungwiza_district' in user_groups:
        section['key'] = 'sec_chitungwiza_district'
        section['name'] = 'Chitungwiza District' 
    elif 'sec_north_district' in user_groups:
        section['key'] = 'sec_north_district'
        section['name'] = 'North District ' 
    elif 'sec_south_district' in user_groups:
        section['key'] = 'sec_south_district'
        section['name'] = 'South District' 
    elif 'sec_east_district' in user_groups:
        section['key'] = 'sec_east_district'
        section['name'] = 'East District' 
    elif 'sec_gm_office' in user_groups:
        section['key'] = 'sec_gm_office'
        section['name'] = 'GM Office' 
    elif 'sec_finance' in user_groups:
        section['key'] = 'sec_finance'
        section['name'] = 'Finance' 
    elif 'sec_stores' in user_groups:
        section['key'] = 'sec_stores'
        section['name'] = 'Stores' 
    elif 'sec_procurement' in user_groups:
        section['key'] = 'sec_procurement'
        section['name'] = 'Procurement' 
    elif 'sec_humanresource' in user_groups:
        section['key'] = 'sec_humanresource'
        section['name'] = 'Human Resource' 
    elif 'sec_engineering' in user_groups:
        section['key'] = 'sec_engineering'
        section['name'] = 'Engineering' 
    elif 'sec_networkdevelopment' in user_groups:
        section['key'] = 'sec_networkdevelopment'
        section['name'] = 'Network Development' 
    elif 'sec_transport' in user_groups:
        section['key'] = 'sec_transport'
        section['name'] = 'Transport' 
    elif 'sec_operationmantenance' in user_groups:
        section['key'] = 'sec_operationmantenance'
        section['name'] = 'Operations and Maintenance' 
    elif 'sec_commercial' in user_groups:
        section['key'] = 'sec_commercial'
        section['name'] = 'Commercial' 
    elif 'sec_riskmanagement' in user_groups:
        section['key'] = 'sec_riskmanagement'
        section['name'] = 'Risk Management'
    elif 'sec_it' in user_groups:
        section['key'] = 'sec_it'
        section['name'] = 'Information Technology' 
    elif 'sec_transportyard' in user_groups:
        section['key'] = 'sec_transportyard'
        section['name'] = 'Transport Yard' 
        
    return {
        "section": section, 
        "network_development": network_development, 
        "admin": admin
        }

def get_kc_dict(kcs):
    
    file_dict = {
        "legislation": [
            {
                "electricity_acts": [],
                "general_legislation": [],
                "statutory_instruments": []
            }
        ],
        "publication": [],
        "standards": [],
        "specifications": [],
        "drawings": [],
        "other_docs": [],
        "drone_tech": [],
        "policies": [
            {
                "commercial": [],
                "hr": [],
                "engineering": [],
                "finance": [],
                "ict": [],
                "risk": []
            }
        ],
        "prince2": [
            {
                "risk_management": [],
                "communication_management": [],
                "quality_management": [],
                "configuration_management": [],
                "risk_register": [],
                "lessons_learnt": [],
                "quality_register": [],
                "configuration_item": [],
                "current_projects": []
            }
        ],
        "engineering": [
            {
                "1_10": [
                    {
                        "reports": [],
                        "protection": [],
                        "earthing": [],
                        "transformers": [],
                        "fuses": [],
                        "instruments": [],
                        "gaskets": [],
                        "switchgear": [],
                        "regulations": [],
                        "insulating_oils": []
                    }
                ],
                "11_20": [
                    
                    {
                        "clearance_distance": [],
                        "mines": [],
                        "interruptions": [],
                        "water_samples": [],
                        "cables": [],
                        "capital_works": [],
                        "gvt_planning": [],
                        "phase_rotation": [],
                        "insulators": [],
                        "locks": []
                    }
                ],
                "21_30": [
                    
                    {
                        "poles": [],
                        "substations": [],
                        "fire_fighting": [],
                        "defective": [],
                        "services": [],
                        "consumer_equipments": [],
                        "lift_equipments": [],
                        "transport": [],
                        "lighting_protection": [],
                        "insulation": []
                    }
                ],
                "31_45": [
                    
                    {
                        "cable_jointing": [],
                        "capacitors": [],
                        "explosives": [],
                        "standard_stock": [],
                        "cradles": [],
                        "standard_11kv": [],
                        "conductors": [],
                        "road_rail": [],
                        "regulations": [],
                        "power_stations": [],
                        "substation_batteries": [],
                        "safety_rules": [],
                        "high_mast": [],
                        "planning_policy": [],
                        "procurement": [],
                        
                    }
                ],
            }
        ],
        "user_manual": [
            {
                "commercial": [],
                "hr": [],
                "engineering": [
                    {
                        "switchgear": [],
                        "drone_technology": [],
                        "ndm": [],
                        "gis": [],
                        "itrack_zim": [],
                        "sap": [],
                        "oms": [],
                    }
                ],
                "finance": [],
                "ict": [],
                "risk": []
            }
        ],
        "drawings": [
            {
                "drawings": [],
                "standards": [],
                "specifications": []
            }
        ],
        "knowledge_base": [
            {
                "commercial": [
                    {
                        "client_risk": [],
                        "payment_risk": [],
                        "revenue_risk": []
                    }
                ],
                "hr": [],
                "engineering": [
                    {
                        "maintainance": [],
                        "drone_tech": []
                    }
                ],
                "finance": [],
                "ict": [
                    {
                        "user_support": [],
                        "network_support": [],
                        "ict_audit": [],
                        "trending_tect": []
                    }
                ],
                "risk": []
            }
        ]
    }
    
    for kc in kcs:
        print(kc)
        if kc.file_type == "LEGISLATION":
           
            if kc.sub_category_1 == "Electricity Acts":
                
                file_dict['legislation'][0]['electricity_acts'].append({
                    "id": kc.id,
                    "filename": kc.filename
                })
            if kc.sub_category_1 == "General Legislation":
                file_dict['legislation'][0]['general_legislation'].append({
                    "id": kc.id,
                    "filename": kc.filename
                })
            if kc.sub_category_1 == "Statutory Instruments":
                file_dict['legislation'][0]['statutory_instruments'].append({
                    "id": kc.id,
                    "filename": kc.filename
                })
        if kc.file_type == "POLICIES & GUIDELINES":
            
            if kc.sub_category_1 == "Commercial":
                
                file_dict['policies'][0]['commercial'].append({
                    "id": kc.id,
                    "filename": kc.filename
                })
            if kc.sub_category_1 == "Human Resources":
                file_dict['policies'][0]['hr'].append({
                    "id": kc.id,
                    "filename": kc.filename
                })
            if kc.sub_category_1 == "Engineering":
                file_dict['policies'][0]['engineering'].append({
                    "id": kc.id,
                    "filename": kc.filename
                })
            if kc.sub_category_1 == "Finance":
                file_dict['policies'][0]['finance'].append({
                    "id": kc.id,
                    "filename": kc.filename
                })
            if kc.sub_category_1 == "ICT":
                file_dict['policies'][0]['ict'].append({
                    "id": kc.id,
                    "filename": kc.filename
                })
            if kc.sub_category_1 == "Risk":
                file_dict['policies'][0]['risk'].append({
                    "id": kc.id,
                    "filename": kc.filename
                })
        if kc.file_type == "PUBLICATIONS":
                file_dict['publication'].append({
                    "id": kc.id,
                    "filename": kc.filename
                })
        if kc.file_type == "STANDARDS":
                file_dict['standards'].append({
                    "id": kc.id,
                    "filename": kc.filename
                })
        if kc.file_type == "SPECIFICATIONS":
                file_dict['specifications'].append({
                    "id": kc.id,
                    "filename": kc.filename
                })
        if kc.file_type == "DRAWINGS":
                file_dict['drawings'].append({
                    "id": kc.id,
                    "filename": kc.filename
                })
        
        if kc.file_type == "OTHER EXTERNAL DOCUMENTS":
                file_dict['other_docs'].append({
                    "id": kc.id,
                    "filename": kc.filename
                })
        if kc.file_type == "DRONE TECHNOLOGY":
                file_dict['drone_tech'].append({
                    "id": kc.id,
                    "filename": kc.filename
                })
        if kc.file_type == "PRINCE2 CENTRE OF EXCELLENCY":
            
            if kc.sub_category_1 == "Risk Management Strategy":
                
                file_dict['prince2'][0]['risk_management'].append({
                    "id": kc.id,
                    "filename": kc.filename
                })
            if kc.sub_category_1 == "Communication Management Strategy":
                file_dict['prince2'][0]['communication_management'].append({
                    "id": kc.id,
                    "filename": kc.filename
                })
            if kc.sub_category_1 == "Quality Management Strategy":
                file_dict['prince2'][0]['quality_management'].append({
                    "id": kc.id,
                    "filename": kc.filename
                })
            if kc.sub_category_1 == "Configuration Management Strategy":
                file_dict['prince2'][0]['configuration_management'].append({
                    "id": kc.id,
                    "filename": kc.filename
                })
            if kc.sub_category_1 == "Risk Register Template":
                file_dict['prince2'][0]['risk_register'].append({
                    "id": kc.id,
                    "filename": kc.filename
                })
            if kc.sub_category_1 == "Lessons Learnt from Previous Projects":
                file_dict['prince2'][0]['lessons_learnt'].append({
                    "id": kc.id,
                    "filename": kc.filename
                })
            if kc.sub_category_1 == "Quality Register Template":
                file_dict['prince2'][0]['quality_register'].append({
                    "id": kc.id,
                    "filename": kc.filename
                })
            if kc.sub_category_1 == "Configuration Item Record Template":
                file_dict['prince2'][0]['configuration_item'].append({
                    "id": kc.id,
                    "filename": kc.filename
                })
            if kc.sub_category_1 == "Current Projects":
                file_dict['prince2'][0]['current_projects'].append({
                    "id": kc.id,
                    "filename": kc.filename
                })
        if kc.file_type=="ENGINEERING":
            if kc.sub_category_1 == "1_10":
                if kc.sub_category_2 == "Reports":
                    file_dict['engineering'][0]['1_10'][0]["reports"].append({
                        "id": kc.id,
                        "filename": kc.filename
                    })
                if kc.sub_category_2 == "Protection":
                    file_dict['engineering'][0]['1_10'][0]["protection"].append({
                        "id": kc.id,
                        "filename": kc.filename
                    })
                if kc.sub_category_2 == "Earthing":
                    file_dict['engineering'][0]['1_10'][0]["earthing"].append({
                        "id": kc.id,
                        "filename": kc.filename
                    })
                if kc.sub_category_2 == "Transformers":
                    file_dict['engineering'][0]['1_10'][0]["transformers"].append({
                        "id": kc.id,
                        "filename": kc.filename
                    })
                if kc.sub_category_2 == "Fuses":
                    file_dict['engineering'][0]['1_10'][0]["fuses"].append({
                        "id": kc.id,
                        "filename": kc.filename
                    })
                if kc.sub_category_2 == "Instruments, Meters and Metering":
                    file_dict['engineering'][0]['1_10'][0]["instruments"].append({
                        "id": kc.id,
                        "filename": kc.filename
                    })
                if kc.sub_category_2 == "Transformer Gaskets":
                    file_dict['engineering'][0]['1_10'][0]["gaskets"].append({
                        "id": kc.id,
                        "filename": kc.filename
                    })
                if kc.sub_category_2 == "Switchgear":
                    file_dict['engineering'][0]['1_10'][0]["switchgear"].append({
                        "id": kc.id,
                        "filename": kc.filename
                    })
                if kc.sub_category_2 == "Post Office Regulations":
                    file_dict['engineering'][0]['1_10'][0]["regulations"].append({
                        "id": kc.id,
                        "filename": kc.filename
                    })
                if kc.sub_category_2 == "Insulating Oils":
                    file_dict['engineering'][0]['1_10'][0]["insulating_oils"].append({
                        "id": kc.id,
                        "filename": kc.filename
                    })
            if kc.sub_category_1 == "11_20":
                
                if kc.sub_category_2 == "Clearance Distances":
                    file_dict['engineering'][0]['11_20'][0]["clearance_distance"].append({
                        "id": kc.id,
                        "filename": kc.filename
                    })
                if kc.sub_category_2 == "Mines Department Regulations":
                    file_dict['engineering'][0]['11_20'][0]["mines"].append({
                        "id": kc.id,
                        "filename": kc.filename
                    })
                if kc.sub_category_2 == "Interruption of Supply Notice to Consumers":
                    file_dict['engineering'][0]['11_20'][0]["interruptions"].append({
                        "id": kc.id,
                        "filename": kc.filename
                    })
                if kc.sub_category_2 == "Water Samples and Painting to Consumers":
                    file_dict['engineering'][0]['11_20'][0]["water_samples"].append({
                        "id": kc.id,
                        "filename": kc.filename
                    })
                if kc.sub_category_2 == "Cables":
                    file_dict['engineering'][0]['11_20'][0]["cables"].append({
                        "id": kc.id,
                        "filename": kc.filename
                    })
                if kc.sub_category_2 == "Capital Works and Expenditure":
                    file_dict['engineering'][0]['11_20'][0]["capital_works"].append({
                        "id": kc.id,
                        "filename": kc.filename
                    })
                if kc.sub_category_2 == "Government planning and Wayleaves":
                    file_dict['engineering'][0]['11_20'][0]["gvt_planning"].append({
                        "id": kc.id,
                        "filename": kc.filename
                    })
                if kc.sub_category_2 == "Phase Rotation and Colouring":
                    file_dict['engineering'][0]['11_20'][0]["phase_rotation"].append({
                        "id": kc.id,
                        "filename": kc.filename
                    })
                if kc.sub_category_2 == "Insulators and Bushings":
                    file_dict['engineering'][0]['11_20'][0]["insulators"].append({
                        "id": kc.id,
                        "filename": kc.filename
                    })
                if kc.sub_category_2 == "Locks and Keys":
                    file_dict['engineering'][0]['11_20'][0]["locks"].append({
                        "id": kc.id,
                        "filename": kc.filename
                    })
            if kc.sub_category_1 == "21_30":
                
                if kc.sub_category_2 == "RMasts, Poles, Stays and Crossarms":
                    file_dict['engineering'][0]['21_30'][0]["poles"].append({
                        "id": kc.id,
                        "filename": kc.filename
                    })
                if kc.sub_category_2 == "Substations":
                    file_dict['engineering'][0]['21_30'][0]["substations"].append({
                        "id": kc.id,
                        "filename": kc.filename
                    })
                if kc.sub_category_2 == "Fire Fighting":
                    file_dict['engineering'][0]['21_30'][0]["fire_fighting"].append({
                        "id": kc.id,
                        "filename": kc.filename
                    })
                if kc.sub_category_2 == "Defective and Damaged Equipment Insurance & Guarantees":
                    file_dict['engineering'][0]['21_30'][0]["defective"].append({
                        "id": kc.id,
                        "filename": kc.filename
                    })
                if kc.sub_category_2 == "Services and Service Equipment":
                    file_dict['engineering'][0]['21_30'][0]["services"].append({
                        "id": kc.id,
                        "filename": kc.filename
                    })
                if kc.sub_category_2 == "Consumer's Equipment and installation":
                    file_dict['engineering'][0]['21_30'][0]["consumer_equipments"].append({
                        "id": kc.id,
                        "filename": kc.filename
                    })
                if kc.sub_category_2 == "Lifting Equipment":
                    file_dict['engineering'][0]['21_30'][0]["lift_equipments"].append({
                        "id": kc.id,
                        "filename": kc.filename
                    })
                if kc.sub_category_2 == "Transport":
                    file_dict['engineering'][0]['21_30'][0]["transport"].append({
                        "id": kc.id,
                        "filename": kc.filename
                    })
                if kc.sub_category_2 == "Lighting Protection and Arrestors":
                    file_dict['engineering'][0]['21_30'][0]["lighting_protection"].append({
                        "id": kc.id,
                        "filename": kc.filename
                    })
                if kc.sub_category_2 == "Insulation":
                    file_dict['engineering'][0]['21_30'][0]["insulation"].append({
                        "id": kc.id,
                        "filename": kc.filename
                    })
            if kc.sub_category_1 == "31_45":
                
                if kc.sub_category_2 == "Cable Jointing Laying":
                    file_dict['engineering'][0]['31_45'][0]["cable_jointing"].append({
                        "id": kc.id,
                        "filename": kc.filename
                    })
                if kc.sub_category_2 == "Capacitors and Power Factor Correction":
                    file_dict['engineering'][0]['31_45'][0]["capacitors"].append({
                        "id": kc.id,
                        "filename": kc.filename
                    })
                if kc.sub_category_2 == "Explosive and Magazine":
                    file_dict['engineering'][0]['31_45'][0]["explosives"].append({
                        "id": kc.id,
                        "filename": kc.filename
                    })
                if kc.sub_category_2 == "Standard Stock Items":
                    file_dict['engineering'][0]['31_45'][0]["standard_stock"].append({
                        "id": kc.id,
                        "filename": kc.filename
                    })
                if kc.sub_category_2 == "Cradles and Guards":
                    file_dict['engineering'][0]['31_45'][0]["cradles"].append({
                        "id": kc.id,
                        "filename": kc.filename
                    })
                if kc.sub_category_2 == "Standard 11Kv Line Construction":
                    file_dict['engineering'][0]['31_45'][0]["standard_11kv"].append({
                        "id": kc.id,
                        "filename": kc.filename
                    })
                if kc.sub_category_2 == "Conductors, Earthwires and Accessories":
                    file_dict['engineering'][0]['31_45'][0]["conductors"].append({
                        "id": kc.id,
                        "filename": kc.filename
                    })
                if kc.sub_category_2 == "Road, Rail, and Line Crossings":
                    file_dict['engineering'][0]['31_45'][0]["road_rail"].append({
                        "id": kc.id,
                        "filename": kc.filename
                    })
                if kc.sub_category_2 == "Z.E.T.D.C Regulations and Safety Precautions":
                    file_dict['engineering'][0]['31_45'][0]["regulations"].append({
                        "id": kc.id,
                        "filename": kc.filename
                    })
                if kc.sub_category_2 == "Power Stations":
                    file_dict['engineering'][0]['31_45'][0]["power_stations"].append({
                        "id": kc.id,
                        "filename": kc.filename
                    })
                if kc.sub_category_2 == "Substation Batteries":
                    file_dict['engineering'][0]['31_45'][0]["substation_batteries"].append({
                        "id": kc.id,
                        "filename": kc.filename
                    })
                if kc.sub_category_2 == "Safety Rules for Operation and Maintenance Switching Authorization":
                    file_dict['engineering'][0]['31_45'][0]["safety_rules"].append({
                        "id": kc.id,
                        "filename": kc.filename
                    })
                if kc.sub_category_2 == "High Mast Lighting":
                    file_dict['engineering'][0]['31_45'][0]["high_mast"].append({
                        "id": kc.id,
                        "filename": kc.filename
                    })
                if kc.sub_category_2 == "Planning Policy on Firm Capacity":
                    file_dict['engineering'][0]['31_45'][0]["planning_policy"].append({
                        "id": kc.id,
                        "filename": kc.filename
                    })
                if kc.sub_category_2 == "Procurement":
                    file_dict['engineering'][0]['31_45'][0]["procurement"].append({
                        "id": kc.id,
                        "filename": kc.filename
                    })
        if kc.file_type == "USER MANUALS":
            
            if kc.sub_category_1 == "Commercial":
                
                file_dict['user_manual'][0]['commercial'].append({
                    "id": kc.id,
                    "filename": kc.filename
                })
            if kc.sub_category_1 == "Human Resources":
                file_dict['user_manual'][0]['hr'].append({
                    "id": kc.id,
                    "filename": kc.filename
                })
            if kc.sub_category_1 == "engineering":
                if kc.sub_category_2 == "Switchgear":
                    file_dict['user_manual'][0]['engineering'][0]["switchgear"].append({
                        "id": kc.id,
                        "filename": kc.filename
                    })
                if kc.sub_category_2 == "Drone Technology":
                    file_dict['user_manual'][0]['engineering'][0]["drone_technology"].append({
                        "id": kc.id,
                        "filename": kc.filename
                    })
                if kc.sub_category_2 == "NDM":
                    file_dict['user_manual'][0]['engineering'][0]["ndm"].append({
                        "id": kc.id,
                        "filename": kc.filename
                    })
                if kc.sub_category_2 == "GIS":
                    file_dict['user_manual'][0]['engineering'][0]["gis"].append({
                        "id": kc.id,
                        "filename": kc.filename
                    })
                if kc.sub_category_2 == "iTrack Zimbabwe Geotrack Connect Manual":
                    file_dict['user_manual'][0]['engineering'][0]["itrack_zim"].append({
                        "id": kc.id,
                        "filename": kc.filename
                    })
                if kc.sub_category_2 == "SAP":
                    file_dict['user_manual'][0]['engineering'][0]["sap"].append({
                        "id": kc.id,
                        "filename": kc.filename
                    })
                if kc.sub_category_2 == "OMS":
                    file_dict['user_manual'][0]['engineering'][0]["oms"].append({
                        "id": kc.id,
                        "filename": kc.filename
                    })
            if kc.sub_category_1 == "Finance":
                file_dict['user_manual'][0]['finance'].append({
                    "id": kc.id,
                    "filename": kc.filename
                })
            if kc.sub_category_1 == "ICT":
                file_dict['user_manual'][0]['ict'].append({
                    "id": kc.id,
                    "filename": kc.filename
                })
            if kc.sub_category_1 == "Risk":
                file_dict['user_manual'][0]['risk'].append({
                    "id": kc.id,
                    "filename": kc.filename
                })
        if kc.file_type == "PUBLICATIONS":
                file_dict['publication'].append({
                    "id": kc.id,
                    "filename": kc.filename
                })
        if kc.file_type == "STANDARDS, SPECIFICATIONS & DRAWINGS":
            print("lg")
            if kc.sub_category_1 == "Drawings":
                print("ae")
                file_dict['drawings'][0]['drawings'].append({
                    "id": kc.id,
                    "filename": kc.filename
                })
            if kc.sub_category_1 == "Standards":
                file_dict['drawings'][0]['standards'].append({
                    "id": kc.id,
                    "filename": kc.filename
                })
            if kc.sub_category_1 == "Specifications":
                file_dict['drawings'][0]['specifications'].append({
                    "id": kc.id,
                    "filename": kc.filename
                })
        if kc.file_type == "KNOWLEDGE BASE":
            if kc.sub_category_1 == "commercial":
                if kc.sub_category_2 == "Client Interaction Risks":
                    file_dict['knowledge_base'][0]['commercial'][0]["client_risk"].append({
                        "id": kc.id,
                        "filename": kc.filename
                    })
                if kc.sub_category_2 == "Payment Risks":
                    file_dict['knowledge_base'][0]['commercial'][0]["payment_risk"].append({
                        "id": kc.id,
                        "filename": kc.filename
                    })
                if kc.sub_category_2 == "Revenue Assurance Risks":
                    file_dict['knowledge_base'][0]['commercial'][0]["revenue_risk"].append({
                        "id": kc.id,
                        "filename": kc.filename
                    })
            if kc.sub_category_1 == "engineering":
                if kc.sub_category_2 == "Maintanance":
                    file_dict['knowledge_base'][0]['engineering'][0]["maintainance"].append({
                        "id": kc.id,
                        "filename": kc.filename
                    })
                if kc.sub_category_2 == "Drone Technology":
                    file_dict['knowledge_base'][0]['engineering'][0]["drone_tech"].append({
                        "id": kc.id,
                        "filename": kc.filename
                    })
            if kc.sub_category_1 == "HR":
                
                file_dict['knowledge_base'][0]['hr'].append({
                    "id": kc.id,
                    "filename": kc.filename
                })
            if kc.sub_category_1 == "Risk":
                file_dict['knowledge_base'][0]['risk'].append({
                    "id": kc.id,
                    "filename": kc.filename
                })
            if kc.sub_category_1 == "Finance":
                file_dict['knowledge_base'][0]['finance'].append({
                    "id": kc.id,
                    "filename": kc.filename
                })
            if kc.sub_category_1 == "ict":
                if kc.sub_category_2 == "User Support":
                    file_dict['knowledge_base'][0]['ict'][0]["user_support"].append({
                        "id": kc.id,
                        "filename": kc.filename
                    })
                if kc.sub_category_2 == "Network Support":
                    file_dict['knowledge_base'][0]['ict'][0]["network_support"].append({
                        "id": kc.id,
                        "filename": kc.filename
                    })
                if kc.sub_category_2 == "ICT Audit":
                    file_dict['knowledge_base'][0]['ict'][0]["ict_audit"].append({
                        "id": kc.id,
                        "filename": kc.filename
                    })
                if kc.sub_category_2 == "Trending Technologies":
                    file_dict['knowledge_base'][0]['ict'][0]["trending_tect"].append({
                        "id": kc.id,
                        "filename": kc.filename
                    })
    return file_dict
        