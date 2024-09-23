import UIKit

class ViewController: UIViewController {
    // MARK: - Properties
    private let labelText = "Hello, World!"
    private let labelText2 = "Text Changed, COOL 🎉"
    private var isTextChanged = false
    
    // MARK: - IBOutlets
    @IBOutlet private weak var toggleButton: UIButton?
    @IBOutlet private weak var textChangeButton: UIButton?
    @IBOutlet weak var label: UILabel!
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    // MARK: - UI Setup
    private func setupUI() {
        initializeLabel()
        initializeToggleButton()
        initializeTextChangeButton()
    }
    
    private func initializeLabel() {
        label?.text = labelText
        label?.textColor = .black
        label?.font = .systemFont(ofSize: 16)
        label?.textAlignment = .center
        label?.isHidden = false
    }
    
    private func initializeToggleButton() {
        toggleButton?.setTitle("Toggle Label", for: .normal)
        toggleButton?.addTarget(self, action: #selector(toggleButtonTapped), for: .touchUpInside)
    }
    
    private func initializeTextChangeButton() {
        textChangeButton?.setTitle("Change Label Text", for: .normal)
        textChangeButton?.addTarget(self, action: #selector(textChangeButtonTapped), for: .touchUpInside)
    }
    
    // MARK: - Actions
    @objc private func toggleButtonTapped() {
        label?.isHidden.toggle()
    }
    
    @objc private func textChangeButtonTapped() {
        isTextChanged.toggle()
        label?.text = isTextChanged ? labelText2 : labelText
        textChangeButton?.setTitle(isTextChanged ? "Change Text Back" : "Change Label Text", for: .normal)
    }
    
    @IBAction private func makeSomeGreeting(_ sender: Any) {
        label?.text = "Hello!"
    }
}
