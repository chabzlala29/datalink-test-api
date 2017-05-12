# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Device.all.map(&:destroy)

Device.create(device_mac: 'E4956E40DFCF', serial_no: 'DTL01', color: '6195ED', name: 'WORKSHOP', description: 'WORKSHOP', building: 'UNIT8', level: 'Grd Flr', device_threshold: 8)
Device.create(device_mac: 'E4956E40DFB6', serial_no: 'DTL02', color: 'ED8C61', name: 'IT ROOM', description: 'IT ROOM', building: 'UNIT8', level: '2nd Flr', device_threshold: 8)
Device.create(device_mac: 'E4956E4E410B', serial_no: 'PH001', color: 'ECED61', name: 'A2-Z1', description: 'Western Port', building: 'A', level: 'L2', device_threshold: 8)
Device.create(device_mac: 'E4956E4E406C', serial_no: 'PH002', color: '8FED61', name:  'A3-Z2', description: 'Bass', building: 'A', level: 'L3', device_threshold: 8)
Device.create(device_mac: 'E4956E4E40F4', serial_no: 'PH003', color: '61CBED', name: 'A4-Z3', description: 'Port Philip', building: 'A', level: 'L4', device_threshold: 8)
Device.create(device_mac: 'E4956E4E4061', serial_no: 'PH004', color: '9061ED', name: 'G5-Z4', description: '5FS Main Entry', building: 'G', level: 'L5', device_threshold: 8)
Device.create(device_mac: 'E4956E4E401C', serial_no: 'PH005', color: 'EC61ED', name: 'G5-Z5', description: '5FS Storage Room', building: 'G', level: 'L5', device_threshold: 8)
Device.create(device_mac: 'E4956E4E4012', serial_no: 'PH006', color: 'ED618D', name: 'G3-Z6', description: 'Bariatric Shed', building: 'G', level: 'L3', device_threshold: 8)
Device.create(device_mac: 'E4956E4E4019', serial_no: 'PH007', color: 'D3AA9C', name: 'G3-Z7', description: 'Engineering Corridor', building: 'G', level: 'L3', device_threshold: 8)
Device.create(device_mac: 'E4956E4E4097', serial_no: 'PH008', color: 'AE9CD3', name: 'G3-Z8', description: 'Engineering Workshop', building: 'G', level: 'L3', device_threshold: 8)
Device.create(device_mac: 'E4956E4E400C', serial_no: 'PH009', color: '9CC1D3', name: 'G3-Z9', description: 'Bariatric Shed Corridor', building: 'G', level: 'L3', device_threshold: 8)
Device.create(device_mac: 'E4956E4E40D2', serial_no: 'PH010', color: 'ADD39C', name: 'PH010', description: 'PH010', building: 'UNK', level: 'UNK', device_threshold: 8)
