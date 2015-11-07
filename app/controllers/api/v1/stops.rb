module API
  module V1
    class Stops < Grape::API
      include API::V1::Defaults

      resource :stops do
        desc "Список остановок"
        get "", root: :stops do
          Stop.all
        end

        desc "Получить отсановку"
        params do
          requires :id, type: String, desc: "ID отсановки"
        end
        get ":id", root: :stop do
          Stop.where(id: permitted_params[:id]).first!
        end
      end
    end
  end
end
