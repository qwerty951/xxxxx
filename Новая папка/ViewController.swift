//
//  ViewController.swift
//  To-Do List
//
//  Created by admin on 31.08.2023.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    struct Task {
        var name: String
        var isCompleted: Bool
    }
    
    
    @IBOutlet weak var ListView: UILabel!
    @IBOutlet weak var TextFiledView: UITextField!
    @IBOutlet weak var ButtonView: UIButton!
    @IBOutlet weak var TableView: UITableView!
    
    var tasks = [Task]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Выполняем любые дополнительные настройки после загрузки представления.
       // ButtonView.addTarget(self, action: #selector(addTask), for: .touchUpInside) // // Добавляем обработчик для кнопки "Добавить"
        
        TableView.dataSource = self // dataSource устанавливает источник данных для таблицы,self указание на текущий объект или класс.
        TableView.delegate = self // delegate позволяет вашему классу обрабатывать события и взаимодействие с таблицей, реализуя методы протокола UITableViewDelegate.
        
        
    }
    
    // MARK: UITableViewDataSource
    
    func numberOfSections(in tableView: UITableView) -> Int {
            1
        }
    /*numberOfSections,принимает один аргумент - объект типа UITableView (таблицу), и возвращает значение типа Int.
     Метод numberOfSections возвращает число секций в таблице.
     */
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
        /*
          принимает два аргумента: объект типа UITableView (таблицу) и section (секцию), а также возвращает значение типа Int.
         tasks.count: Это выражение, которое предполагает наличие массива с именем tasks. .count - это свойство массива, которое возвращает количество элементов (задач) в массиве.
*/
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell { // cellForRowAt:) используется для настройки и возвращения ячейки (cell) для конкретной строки (row) в таблице
        let item = tasks[indexPath.row] // Создается константа item, в которую сохраняется элемент (задача) из массива tasks по индексу indexPath.row. indexPath - это объект, содержащий информацию о секции и строке в таблице.
            let cell = tableView.dequeueReusableCell(withIdentifier: "TaskCell", for: indexPath) // оздается ячейка (cell) с помощью метода dequeueReusableCell(withIdentifier:for:) объекта tableView. Этот метод используется для повторного использования ячеек, что улучшает производительность
            cell.textLabel?.text = item.name // Задается текст для текстовой метки (label) внутри ячейки.
            return cell
    }
    
    // MARK: - Actions
    
    @IBAction func addTask(_ sender: UIButton) {
        if let taskText = TextFiledView.text, !taskText.isEmpty {
            // Проверяем, что текст задачи не пустой
            
            let newTask = Task(name: taskText, isCompleted: false)
            // Создаем новый экземпляр задачи с указанным текстом и статусом "не выполнено"
            
            tasks.append(newTask)
            // Добавляем задачу в массив tasks
            
            TableView.reloadData()
            // Обновляем таблицу, чтобы отобразить новую задачу
            
            TextFiledView.text = ""
            // Очищаем поле ввода после добавления задачи
            
        }
        
        
        
        
    }
   
    
    
    }

    

        
    



    
    
    
    

