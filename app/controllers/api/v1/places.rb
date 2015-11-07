module API
  module V1
    class Places < Grape::API
      include API::V1::Defaults

      resource :places do
        desc "Список мест (группа находящихся рядом остановок в разных направлениях)"
        get "", root: :places do
          Place.all
        end

        desc "Получить место"
        params do
          requires :id, type: String, desc: "ID места"
        end
        get ":id", root: :place do
          Place.where(id: permitted_params[:id]).first!
        end
      end
    end
  end
end
