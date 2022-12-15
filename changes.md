- Updated localization strings (new translations for mexican spanish and portougese portougese, updated translations for chinese, japanese and russian)
- Updated config files with latest updates (Functional electric system, new XMLVARs)
- Updated flight model
- Changed Oswald efficiency number to 0.776 (12,833m wingspan, 17,8m^2 wing area) from 0.68 (with a 12,833m wingspan, the area has to be 12,5m^2, clearly wrong)
- Using the new WorkingTitle G3000




# Broken
- Cargo door lever not working, door still closes/opens when opening/closing pilot door - see panel.xml, possibly remove every reference to the door (also check old_panel.xml, for the mugz mods)
- GTCs not working
- Overhead light switches and panel lighting not working - see TBM930_interior.xml

# TODO
- Recalculate the sizes in layout.json
- Are the language files needed? Or can we remove them and use the official ones?