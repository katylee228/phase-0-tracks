thanksgiving = {
  'food' => ['turkey', 'gravy', 'raspberry sauce', 'stuffing', 'mashed potato', 'pumpkin pie'],
  'people' => ['Katy', 'Richard', 'Christine', 'Karl'],
  'others' => ['napkins', 'cake', 'beer', 'soda', 'kambucha']
}

p thanksgiving['food'][1]
thanksgiving['food'][2] = 'cranberry sauce'
p thanksgiving['food']
thanksgiving['people'].push('Sean')
p thanksgiving['people'].last
