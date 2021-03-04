class Type < ActiveHash::Base
  self.data = [
    {id: 1, name: "事務所"}, {id: 2, name: "店舗"}, {id: 3, name: "戸建て"}, {id: 4, name: "土地"}, {id: 5, name: "倉庫"}, {id: 6, name: "一棟ビル"}, {id: 7, name: "マンション"}, {id: 8, name: "駐車場"}
  ]
end