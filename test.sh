    #  name: Set up Git
      # run: |
        git config --global user.name 'github-actions[bot]'
        git config --global user.email 'github-actions[bot]@users.noreply.github.com'
 
    #  name: Checkout release branch
      # run: 
      git checkout release
 
    # name: Read and update config file
      # run: |
        # Read the config file and update the values
        # sed -i "s/versions.dete_lib_commom = '11.+/versions.dete_lib_commom = '12.+/g" config/app.properties
        # sed -i "s/versions.dete_lib_entity = '28.+/versions.dete_lib_entity = '29.+/g" config/app.properties
        # sed -i "s/versions.dete_config_schema = '2025.01.+/versions.dete_config_schema = '2026.01.+/g" config/app.properties
        # sed -i "s/versions.dete_calc_schema = '2025.01.+/versions.dete_calc_schema = '2026.01.+/g" config/app.properties
        # sed -i "s/versions.dete_calc_engine = '2025.01.+/versions.dete_calc_engine = '2026.01.+/g" config/app.properties
         sed -i "s/versions.dete_config = '2026.01.+/versions.dete_config = '2027.01.+/g" config/app.properties
      cat config/app.properties > app.properties1
      cp config/app.properties app.properties1
    # - name: Comm   it and push changes to release branch
    #   run: |
        git add config/app.properties
        git commit -m "Update config values"
        git push origin release
      # env:
      #   GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
