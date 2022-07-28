package services

type TokenProvider interface {
	GetDefault() string
	Get(name string) (string, error)
	Save(authToken string, name string)
	SaveDefault(authToken string)
}

type memoryTokenProvider struct {
	tokens map[string]string
}

func (m *memoryTokenProvider) SaveDefault(authToken string) {
	m.tokens["Trinsic"] = authToken
}

func (m *memoryTokenProvider) GetDefault() string {
	return m.tokens["Trinsic"]
}

func (m *memoryTokenProvider) Get(name string) (string, error) {
	if val, ok := m.tokens[name]; ok {
		return val, nil
	}
	return "", nil
}

func (m *memoryTokenProvider) Save(authToken string, name string) {
	m.tokens[name] = authToken
}

func NewMemoryTokenProvider() TokenProvider {
	return &memoryTokenProvider{tokens: make(map[string]string)}
}

var DefaultTokenProvider = NewMemoryTokenProvider()
