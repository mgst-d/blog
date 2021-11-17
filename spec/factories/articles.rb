FactoryBot.define  do
  factory :article do
    title {'Article title'}
    text {'Article text'}

    #создаем фабрику article_with_comments
    factory :article_with_comments do
      #после создания article
      after :create do |article, evaluator|
        #создаем список из нескольких комментариев
        create_list :comment, 3, article: article
      end
    end
  end

end
