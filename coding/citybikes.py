import requests

url = 'http://api.citybik.es/v2/networks'
r = requests.get(url)

result = r.json()
networks_new = []
networks = result.get('networks')
for each in networks:
    each.update(each.get('location'))
    networks_new.append({'Name':each.get('name'), 'Company':each.get('company'), 'Country':each.get('country')})
pd.DataFrame(networks_new).to_csv("rest_api_output.csv")